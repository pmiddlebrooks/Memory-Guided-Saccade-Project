clearvars;
rootDir = '/Volumes/SchallLab/Users/Wolf/ephys_db';


monks = {'Helmholtz','Gauss','Darwin'}; % Which monks to check for
targRF = [180, 0, 0]; % RFs of each (contra to their chamber)

% Initialize some variables
allSpikes = [];
allMonks = [];
allSess = [];
visSDFCell = {};

% Start monk loop
for im = 1:length(monks),
    fprintf('Working on data for %s: ',monks{im});
    
    % Get this monk sessions
    monkFold = sprintf('%s/%s',rootDir,monks{im});
    monkSess = dir(sprintf('%s/201*',monkFold));
    
    % Loop through sessions
    for is = 1:length(monkSess),
        sessNames{im,is} = monkSess(is).name;
        printStr = sprintf('Session %d of %d...',is,length(monkSess));
        fprintf(printStr);
        
        chanNames = dir(sprintf('%s/%s/DSP',monkFold,monkSess(is).name));
        chanNames = {chanNames.name};
        doCut = cellfun(@(x) strcmp(x(1),'.'),chanNames);
        chans = cellfun(@(x) str2num(x(4:5)),chanNames(~doCut));
        maxChans = max(chans);
        saveMaxes(im,is) = maxChans;
        
        % Loop through channels once to check for MG sessions
        ic = 1;
        hasMG = 0;
        while (ic <= maxChans && hasMG == 0),
            chanName = num2str(ic); if length(chanName) == 1, chanName = ['0',chanName]; end
            chanUnits = dir(sprintf('%s/%s/DSP/DSP%s*',monkFold,monkSess(is).name,chanName));
            chanSpks = [];
            if ~isempty(chanUnits),
                for iu = 1:length(chanUnits),
                    chanMG = dir(sprintf('%s/%s/DSP/%s/*MG*',monkFold,monkSess(is).name,chanUnits(iu).name));
                    if ~isempty(chanMG),
                        hasMG = 1;
                        
                    end
                end
            end
            ic = ic+1;
        end
        if ~hasMG,
            for ib = 1:length(printStr),
                fprintf('\b');
            end
            if is == length(monkSess),
                fprintf('Done!\n');
            end
            continue;
            
        end
        for ic = 1:maxChans,
            chanName = num2str(ic); if length(chanName) == 1, chanName = ['0',chanName]; end
            chanUnits = dir(sprintf('%s/%s/DSP/DSP%s*',monkFold,monkSess(is).name,chanName));
            chanSpks = [];
            lastMG = '';
            if ~isempty(chanUnits),
                for iu = 1:length(chanUnits),
                    chanMG = dir(sprintf('%s/%s/DSP/%s/*MG*',monkFold,monkSess(is).name,chanUnits(iu).name));
                    if iu > 1,
                        chanMGName = {chanMG.name};
                        chanMGInd = find(strcmp(chanMGName,lastMG));
                        if ~isempty(chanMGInd),
                            chanMG = chanMG(chanMGInd);
                        else
                            chanMG = [];
                        end
                    end
                    if ~isempty(chanMG),
                        lastMG = chanMG(1).name;
                        load(sprintf('%s/%s/DSP/%s/%s',monkFold,monkSess(is).name,chanUnits(iu).name,chanMG(1).name));
                        if ((iu > 1) && (size(spiketimes(ismember(Task.TaskType,'MG')' & Task.TargetLoc == targRF(im),:),1) == size(chanSpks,1))) || isempty(chanSpks),
                            chanSpks = cat(2,chanSpks,spiketimes(ismember(Task.TaskType,'MG')' & Task.TargetLoc == targRF(im),:));
                            continue;
                        end
                        
                    end
                end
                if ~isempty(chanSpks),
                    sortSpks = sort(chanSpks,2);
                    [vSDF,vTimes] = klSpkRatev2(sortSpks,'-q',1);
                    [mSDF,mTimes] = klSpkRatev2(sortSpks-repmat(Task.SRT(ismember(Task.TaskType','MG') & Task.TargetLoc == targRF(im)) + Task.GoCue(ismember(Task.TaskType','MG') & Task.TargetLoc == targRF(im)),1,size(sortSpks,2)),'-q',1);
                    visSDFCell{ic,is,im} = nanmean(vSDF,1);
                    visTimeCell{ic,is,im} = vTimes; 
                    movSDFCell{ic,is,im} = nanmean(mSDF,1);
                    movTimeCell{ic,is,im} = mTimes;
                end
            end
            
        end
        for ib = 1:length(printStr),
            fprintf('\b');
        end
        if is == length(monkSess),
            fprintf('Done!\n');
        end
    end
end

% Now put them into the times and such
for im = 1:length(monks),
    for is = 1:size(visSDFCell,2),
        clear tmpVisCell tmpVisTimes tmpMovCell tmpMovTimes
        for ic = 1:size(visSDFCell,1),
            tmpVisCell{ic,1} = visSDFCell{ic,is,im};
            tmpVisTimes{ic,1} = visTimeCell{ic,is,im};
            tmpMovCell{ic,1} = movSDFCell{ic,is,im};
            tmpMovTimes{ic,1} = movTimeCell{ic,is,im};
        end
        if any(~cellfun(@isempty,tmpVisCell)),
            visZero = cellfun(@(x) find(abs(x) == min(abs(x))),tmpVisTimes,'UniformOutput',0);
            [visZero{cellfun(@isempty,visZero)}] = deal(nan); visZero = cell2mat(visZero);
            visAlign = klAlignv2(tmpVisCell,visZero);
            visTimes = nanmean(klAlignv2(tmpVisTimes,visZero),1);
            visSDFTimes{im,is} = visTimes(visTimes >= -300 & visTimes <= 500);
            visSDFs{im,is} = visAlign(:,visTimes >= -300 & visTimes <= 500);
        end
         if any(~cellfun(@isempty,tmpMovCell)),
            movZero = cellfun(@(x) find(abs(x) == min(abs(x))),tmpMovTimes,'UniformOutput',0);
            [movZero{cellfun(@isempty,movZero)}] = deal(nan); movZero = cell2mat(movZero);
            movAlign = klAlignv2(tmpMovCell,movZero);
            movTimes = nanmean(klAlignv2(tmpMovTimes,movZero),1);
            movSDFTimes{im,is} = movTimes(movTimes >= -500 & movTimes <= 300);
            movSDFs{im,is} = movAlign(:,movTimes >= -500 & movTimes <= 300);
         end
    end
end
    
for i = 1:numel(visSDFs),
    if isempty(visSDFs{i}),
        visSDFTimes{i} = nan;
        visSDFs{i} = nan;
    end
end        
for i = 1:numel(movSDFs),
    if isempty(movSDFs{i}),
        movSDFTimes{i} = nan;
        movSDFs{i} = nan;
    end
end    
    
movCorrMats = cellfun(@(x) corr(x'),movSDFs,'UniformOutput',0);
visCorrMats = cellfun(@(x) corr(x'),visSDFs,'UniformOutput',0);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    