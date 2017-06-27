%% Starting point for firing rate script...
%  This attempts to be a minimalist program where optional arguments may
%  reduce speed. Options will be added after proof-of-concept
%
%  v2 - Sets all time points (by trial) before first spike and after last
%  spike to nan (SDF only).
%
%  Working PSTH function, not yet SDF
%  Try to add variable input arguments (let it run as defaults better)
%  or make parameters a structure

function [spkRate, tRange, groupedSpikes] = klSpkRatev2(spikes,varargin)               % V2 - spikes,bin,step,tStart,tEnd,type)

dbstop if error

funStart = tic;

varStrInd = find(cellfun('isclass',varargin,'char'));
varStr = varargin(varStrInd);

% Set defaults
bin = 200; step = 50; tStart = 0; tEnd = 10000; type = 'sdf'; splitByGroups = 0;
quiet = 0;
kType = 'psp';
gaussSD = 20;
minT = -inf;
maxT = 3000;

spikes(spikes >= maxT) = nan;
spikes(spikes <= minT) = nan;
if ~isempty(varargin)
    if isstruct(varargin{1})
        fields = fieldnames(varargin{1});
        for iv = 1:length(fields)
            thisSpecVal = varargin{1}.(fields{iv});
            switch fields{iv}
                case 'bin'                               % Bin size
                if ~isa(thisSpecVal,'double') || ~thisSpecVal > 0, error('Invalid bin specification\n'); end
                bin = thisSpecVal;
                case 'step'
                    if ~isa(thisSpecVal,'double') || ~thisSpecVal > 0, error('Invalid step specification\n'); end
                    step = thisSpecVal; 
                case 'time'
                    if length(thisSpecVal) ~= 2, error('Invalid time window specified\n'); end
                    tStart = thisSpecVal(1); tEnd = thisSpecVal(2);
                case 'type'
                    if ismember(lower(thisSpecVal),{'psth','sdf'}), type = lower(thisSpecVal); else error('Invalide type specified'); end
                otherwise
                    continue;
            end
        end
    else
        for iv = 1:length(varStrInd)
            if varStrInd(iv) < length(varargin), thisSpecVal = varargin{varStrInd(iv)+1}; else continue; end
            switch varStr{iv}
                case '-b'                               % Bin size
                    if ~isa(thisSpecVal,'double') || ~thisSpecVal > 0, error('Invalid bin specification\n'); end
                    bin = thisSpecVal;
                case '-s'
                    if ~isa(thisSpecVal,'double') || ~thisSpecVal > 0, error('Invalid step specification\n'); end
                    step = thisSpecVal; 
                case '-t'
                    if length(thisSpecVal) ~= 2, error('Invalid time window specified\n'); end
                    tStart = thisSpecVal(1); tEnd = thisSpecVal(2);
                case '-type'
                    if ismember(thisSpecVal,{'psth','sdf'}), type = thisSpecVal; else error('Invalide type specified\n'); end
                case 'group'
                    if ~iscell(thisSpecVal), error('Grouping requires cell array of vectors'); end
                    splitByGroups = 1; groupVars = thisSpecVal;
                case '-q'
                    quiet = thisSpecVal;
                case 'ktype'
                    kType = thisSpecVal;
                otherwise
                    continue;
            end
        end
    end
    for iv = 1:length(varStrInd)
        if varStrInd(iv) < length(varargin), thisSpecVal = varargin{varStrInd(iv)+1}; else continue; end
        switch varStr{iv}
            case '-b'                               % Bin size
                if ~isa(thisSpecVal,'double') || ~thisSpecVal > 0, error('Invalid bin specification\n'); end
                bin = thisSpecVal;
            case '-s'
                if ~isa(thisSpecVal,'double') || ~thisSpecVal > 0, error('Invalid step specification\n'); end
                step = thisSpecVal; 
            case '-t'
                if length(thisSpecVal) ~= 2, error('Invalid time window specified\n'); end
                tStart = thisSpecVal(1); tEnd = thisSpecVal(2);
            case '-type'
                if ismember(thisSpecVal,{'psth','sdf'}), type = thisSpecVal; else error('Invalide type specified\n'); end
            case 'group'
                if ~iscell(thisSpecVal), error('Grouping requires cell array of vectors'); end
                splitByGroups = 1; groupVars = thisSpecVal;
            case 'ktype'
                kType = thisSpecVal;
            otherwise
                continue;
        end
    end
end
%valTime = printTiming(funStart);
%fprintf('Values specified in %s\n',valTime);

% Define time values
lastSpk = ceil(max(spikes(:)));
firstSpk = floor(min(spikes(:)));
% tStart = step*(floor(firstSpk/step));
% tEnd   = ceil(lastSpk/step)*step;
tStart = bin*(floor(firstSpk/bin));
tEnd   = ceil(lastSpk/bin)*bin;

%keyboard;
totalTime = tEnd-tStart;
numSteps = ceil(totalTime/step);

%type = 'psth';

switch type
    case 'psth'
        spksThisBin = nan(size(spikes,1),numSteps,size(spikes,3));
        spkRate = nan(size(spikes,1),numSteps,size(spikes,3));

        loopStart = tic;
        reportOdd = 1;
        backToEven = 0;
        zeroInd = -1;
        if step == bin
            tRange = [tStart:step:(tEnd-step)];
            spikes(spikes < tStart | spikes > tEnd) = nan;
            spksThisBin = hist(spikes',tRange)';
            spkRate = spksThisBin./(step/1000);
        elseif step ~= bin && mod(bin,step) == 0
            tRange = [tStart:step:(tEnd-step)];
            tRangeSub = tStart:bin:(tEnd-step);
            %tRange = [tStart:step:(tEnd)];
            %tRangeSub = tStart:bin:(tEnd);
            stepPerBin = bin/step;
            spksThisBin = nan(size(spikes,1),numSteps-mod(numSteps,2),size(spikes,3));
            for ib = 1:stepPerBin
                nanSpikes = spikes;
                nanSpikes(spikes < (tStart+(step*(ib-1))) | spikes > (tEnd+(step*(ib-1)))) = nan;
                for ic = 1:size(spikes,3)
                    spksThisBin(:,ib:stepPerBin:numSteps-mod(numSteps,2),ic) = hist(nanSpikes(:,:,ic)',tRangeSub+(step*(ib-1)))';
            
                end
            end
            spkRate = spksThisBin./(bin/1000);
        else
            for is = 1:numSteps
                tRange = [tStart:step:(tEnd-step)];
                binStart = tStart + (is-1)*step;
                binEnd = binStart + bin;

                spksThisBin(:,is,:) = sum(spikes >= binStart & spikes < binEnd,2);
                spkRate(:,is,:) = spksThisBin(:,is,:)./(bin/1000);
                currTime = toc(loopStart);
                if mod(floor(currTime),2) && reportOdd && ~quiet
                    fprintf('\t%.2f%% completed (%d/%d)\n',is*100/numSteps,is,numSteps);
                    reportOdd = 0;
                elseif ~mod(floor(currTime),2) && ~reportOdd
                    reportOdd = 1;
                end

            end
        end
        if ~quiet
            fprintf('\nSliding rates calculated in %s\n',printTiming(loopStart));
        end
        if length(tRange) < size(spkRate,2)
            for it = 1:(size(spkRate,2)-length(tRange))
                tRange = cat(2,tRange,tRange(end)+step);
            end
        elseif length(tRange) > size(spkRate,2)
            for it = 1:(length(tRange)-size(spkRate,2))
                tRange(end) = [];
            end
        end
    case 'sdf'
        loopStart = tic;
        
        %minSpkTimes = min(spikes,[],2);
        %movedSpks = spikes-repmat((minSpkTimes-1),[1,size(spikes,2),1]);
        minSpkTime = min(spikes(1:numel(spikes)));
        movedSpks = spikes - repmat((minSpkTime - 1),size(spikes));
        newMax = max(movedSpks(1:numel(movedSpks)));
        tRange = [floor(minSpkTime), (floor(minSpkTime) + ceil(newMax) - 1)];
        spkInds = [];
        for ic = 1:size(spikes,3)
            spkInds = cat(3,spkInds,zeros(size(spikes,1),ceil(newMax)));
        end
        for ic = 1:size(spikes,3)
            for ir = 1:size(spikes,1)
                if sum(~isnan(movedSpks(ir,:,ic))) > 0,
                    spkInds(ir,ceil(movedSpks(ir,~isnan(movedSpks(ir,:,ic)),ic)),ic) = 1;
                    spkInds(ir,find(spkInds(ir,:,ic) == 1,1,'last')+1:end,ic) = nan;
                    spkInds(ir,1:(find(spkInds(ir,:,ic) == 1,1)-1),ic) = nan;
                else
                    spkInds(ir,:,ic) = nan;
                end
            end
        end
        if size(tRange(1):tRange(2)) ~= ceil(newMax),
            keyboard
        end
        kern = klGetKern('type',kType,'width',gaussSD);
        kern = kern.*1000; % Convert from spk/ms to spk/s
        
        %spkDensMat = convn(spkInds,kernGauss,'same');   % cuts off convolution tails
        for ic = 1:size(spikes,3)
            if ~quiet
                fprintf('\tConvolving channel %d of %d...\n',ic,size(spikes,3));
            end
            spkDensMat(:,:,ic) = conv2(spkInds(:,:,ic),kern,'same');   % cuts off convolution tails
        end
        spkRate = spkDensMat;
%         for ic = 1:size(spikes,3),
%             for ir = 1:size(spikes,1),
%                 spkRate(ir,find(spkInds(ir,:,ic) == 1,1,'last')+1:end,ic) = nan;
%             end
%         end
        %spkDensMean = mean(spkDensMat,1);
        %spkDensSEM = std(spkDensMat,1)./size(spkDensMat,1); % SEM = sd/sqrt(n)
        
        for ib = 1:ceil(size(spkDensMat,2)/step)
            binStart = (ib-1)*step+1;
            binEnd = binStart + bin;

            spkRateTemp(:,ib,:) = nanmean(spkDensMat(:,max([binStart,1]):min([binEnd,size(spkDensMat,2)])),2);
            spkThisBin(:,ib,:) = ceil(spkRateTemp(:,ib).*bin);
        end  
        tRange = tRange(1):tRange(2);
        
        spkRate = spkRate(:,tRange >= minT & tRange <= maxT);
        tRange = tRange(tRange >= minT & tRange <= maxT);
        
        %keyboard
    otherwise
        warning('Unrecognized spike rate calculation\n\tReverting to PSTH\\n');
        spksThisBin = nan(size(spikes,1),numSteps,size(spikes,3));
        spkRate = nan(size(spikes,1),numSteps,size(spikes,3));

        loopStart = tic;
        reportOdd = 1;
        backToEven = 0;
        zeroInd = -1;

        for is = 1:numSteps
            binStart = tStart + (is-1)*step;
            binEnd = binStart + bin;

            spksThisBin(:,is,:) = sum(spikes >= binStart & spikes < binEnd,2);
            spkRate(:,is,:) = spksThisBin(:,is,:)./(bin/1000);
            currTime = toc(loopStart);
            if mod(floor(currTime),2) && reportOdd && ~quiet
                fprintf('%.2f%% completed (%d/%d)\n',is*100/numSteps,is,numSteps);
                reportOdd = 0;
            elseif ~mod(floor(currTime),2) && ~reportOdd
                reportOdd = 1;
            end

        end
end
if splitByGroups
    for ig = 1:length(groupVars)
        thisGrouping = groupVars{ig};
        theseSpikes = spikes(thisGrouping,:,:);
        clear spkDensMat
        switch type
            case 'psth'
                spksThisBin = nan(size(theseSpikes,1),numSteps,size(theseSpikes,3));
                thisSpkRate = nan(size(theseSpikes,1),numSteps,size(theseSpikes,3));

                loopStart = tic;
                reportOdd = 1;
                backToEven = 0;
                zeroInd = -1;

                for is = 1:numSteps
                    binStart = tStart + (is-1)*step;
                    binEnd = binStart + bin;

                    spksThisBin(:,is,:) = sum(theseSpikes >= binStart & theseSpikes < binEnd,2);
                    thisSpkRate(:,is,:) = spksThisBin(:,is,:)./(bin/1000);
                    currTime = toc(loopStart);
                    if mod(floor(currTime),2) && reportOdd && ~quiet
                        fprintf('%.2f%% completed (%d/%d)\n',is*100/numSteps,is,numSteps);
                        reportOdd = 0;
                    elseif ~mod(floor(currTime),2) && ~reportOdd
                        reportOdd = 1;
                    end

                end
                groupRange = [tStart tEnd];
                groupedSpikes(ig).spikes = thisSpkRate;
                groupedSpikes(ig).tRange = groupRange;
            case 'sdf'
                loopStart = tic;
                gaussSD = 25;
                %minSpkTimes = min(theseSpikes,[],2);
                %movedSpks = theseSpikes-repmat((minSpkTimes-1),[1,size(theseSpikes,2),1]);
                minSpkTime = min(theseSpikes(1:numel(theseSpikes)));
                movedSpks = theseSpikes - repmat((minSpkTime - 1),size(theseSpikes));
                newMax = max(movedSpks(1:numel(movedSpks)));
                groupRange = [minSpkTime, (minSpkTime + newMax - 1)];
                spkInds = [];
                for ic = 1:size(theseSpikes,3)
                    spkInds = cat(3,spkInds,zeros(size(theseSpikes,1),ceil(newMax)));
                end
                for ic = 1:size(theseSpikes,3)
                    for ir = 1:size(theseSpikes,1)
                        spkInds(ir,movedSpks(ir,~isnan(movedSpks(ir,:,ic)),ic),ic) = 1;
                    end
                end
                kern = klGetKern(kType,'width',gaussSD);
                kern = kern.*1000; % To convert to Hz
%                 sd = gaussSD ; N = sd*5 ; t=-N:N;
%                 kern = 1000*(1/sqrt(2*pi*sd.^2))*exp(-t.^2/(2*sd.^2));  % mult by 1000 here to convert to spk/s

                %spkDensMat = convn(spkInds,kernGauss,'same');   % cuts off convolution tails
                for ic = 1:size(theseSpikes,3)
                    if ~quiet
                        fprintf('\tConvolving group %d - channel %d of %d...\n',ig,ic,size(theseSpikes,3));
                    end
                    spkDensMat(:,:,ic) = conv2(spkInds(:,:,ic),kern,'same');   % cuts off convolution tails
                end
                groupedSpikes(ig).spikes = spkDensMat;
                groupedSpikes(ig).tRange = groupRange;
                %spkDensMean = mean(spkDensMat,1);
                %spkDensSEM = std(spkDensMat,1)./size(spkDensMat,1); % SEM = sd/sqrt(n)

                %keyboard
            otherwise
                warning('Unrecognized spike rate calculation\n\tReverting to PSTH\\n');
                spksThisBin = nan(size(theseSpikes,1),numSteps,size(theseSpikes,3));
                thisSpkRate = nan(size(theseSpikes,1),numSteps,size(theseSpikes,3));

                loopStart = tic;
                reportOdd = 1;
                backToEven = 0;
                zeroInd = -1;

                for is = 1:numSteps
                    binStart = tStart + (is-1)*step;
                    binEnd = binStart + bin;

                    spksThisBin(:,is,:) = sum(theseSpikes >= binStart & theseSpikes < binEnd,2);
                    thisSpkRate(:,is,:) = spksThisBin(:,is,:)./(bin/1000);
                    currTime = toc(loopStart);
                    if mod(floor(currTime),2) && reportOdd && ~quiet
                        fprintf('%.2f%% completed (%d/%d)\n',is*100/numSteps,is,numSteps);
                        reportOdd = 0;
                    elseif ~mod(floor(currTime),2) && ~reportOdd
                        reportOdd = 1;
                    end

                end
                groupRange = [tStart tEnd];
                groupedSpikes(ig).spikes = thisSpkRate;
                groupedSpikes(ig).tRange = groupRange;
        end
    end
end

loopEnd = toc(loopStart);


%keyboard