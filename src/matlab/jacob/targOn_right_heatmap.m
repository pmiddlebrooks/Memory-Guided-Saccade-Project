% Establish working environment and and matlab paths

% Which computer are you on?
if isdir('/Volumes/HD-1/Users/paulmiddlebrooks/')
    projectRoot = '/Volumes/HD-1/Users/paulmiddlebrooks/memory_guided_saccades';
elseif isdir('/Volumes/Macintosh HD/Users/elseyjg/')
    projectRoot = '/Volumes/Macintosh HD/Users/elseyjg/Memory-Guided-Saccade-Project';    
else
    disp('You need to add another condition or the file path is wrong.')
end

% create paths for data and src/matlab
dataRoot = fullfile(projectRoot, 'data');
matRoot = fullfile(projectRoot, 'src/matlab');

% add/generate paths for different data folders 
addpath(genpath(matRoot));
addpath(genpath(fullfile(matRoot,'behavior')));
addpath(genpath(fullfile(matRoot,'del')));
addpath(genpath(fullfile(matRoot,'neural')));
addpath(genpath(fullfile(matRoot,'plotting')));

% Make this project directory your working directory
cd(matRoot);


% Open a Data File

% declare subject for session list
subject = 'broca';

% Open the list of memory guided saccade sessions
fid = fopen(fullfile(dataRoot,subject, ['del_sessions_',subject,'.csv']));

% Headers for data type
nCol = 5;
formatSpec = '%s';
mHeader = textscan(fid, formatSpec, nCol, 'Delimiter', ',');

% All data corresponding to each header.
%   Delimiter - indicates character used to separate values
%   TreatAsEmpty - placeholder text for empty value
mData = textscan(fid, '%s %s %d %d %d', 'Delimiter', ',','TreatAsEmpty',{'NA','na'});

% declare variables with data
sessionList     = mData{1};
hemisphereList  = mData{2};
neuronLogical   = logical(mData{3});
lfpLogical      = mData{4}; 
eegLogical      = mData{5};

% Extract only sessions with spike data
sessionList = sessionList(neuronLogical);
epochWindow = [-100 : 400];


% Begin for loop for all sessions

% session row/rows
sessionInd = 1;
session = sessionList{sessionInd};

[trialData, SessionData] = load_data(subject, session, mem_min_vars, 1);


% Sort trials based on trial type criteria

outcome = {'saccToTarget'};
Kernel.method = 'postsynaptic potential';
Kernel.growth = 1;
Kernel.decay = 20;

sdfAll = [];
alignEvent = 'responseOnset';

sidename = 'left';
side = {sidename};

trialsRight = mem_trial_selection(trialData, outcome, side);
alignRight = trialData.(alignEvent)(trialsRight);

[unitIndex, unitArrayNew] = neuronexus_plexon_mapping(SessionData.spikeUnitArray, 32);

    for i = 1 : length(unitArrayNew);
            iUnitIndex = unitIndex(i);
            [alignedRasters, alignmentIndex] = spike_to_raster(trialData.spikeData(trialsRight, iUnitIndex), alignRight);
            sdfRight = spike_density_function(alignedRasters, Kernel);
            sdfMeanRight = nanmean(sdfRight(:,epochWindow + alignmentIndex), 1);
            sdfAll = [sdfAll ; sdfMeanRight];
    end
sdfAll = (sdfAll');
unitArrayNew = (unitArrayNew'); %why flipped?


% Find the correlation coefficient across channels
corrcoefAll = corrcoef(sdfAll(:,:));
r_squared = (corrcoefAll).^2;
r_squared(r_squared < .5) = nan;
imagesc(r_squared);
myMap = colormap('bone');
colormap(flipud(myMap));

set(gcf, 'units', 'norm', 'position', [0 0 .5 .9])


xlabel('Channels (Descending)', 'fontsize', 18);
xticklabels = {'ch09', 'ch010', 'ch11', 'ch12', 'ch13', 'ch14', 'ch15', 'ch16',...
    'ch25', 'ch26', 'ch27', 'ch28', 'ch29', 'ch30', 'ch31', 'ch32',...
    'ch17', 'ch18', 'ch19', 'ch20', 'ch21', 'ch22', 'ch23', 'ch24',...
    'ch01', 'ch02', 'ch03', 'ch04', 'ch05', 'ch06', 'ch07', 'ch08'};
xticks = linspace(1, size(sdfAll', 1), numel(xticklabels));
set(gca, 'XTick', xticks, 'XTickLabel', flipud(xticklabels(:)'))

yticklabels = {};
yticks = linspace(1, size(sdfAll', 1), numel(yticklabels));
set(gca, 'YTick', yticks, 'YTickLabel', flipud(yticklabels(:)'))

box off;

cb = colorbar;
ylabel(cb, 'r^2', 'fontsize', 18);
title(sprintf('%s', session, ' targOn ', sidename), 'fontsize', 24);

set(cb, 'units', 'norm', 'Position', [.9 .05 .02 .9],  'fontsize', 14);

currentaxis = gca;
set(currentaxis, 'Position', [.0 .05 .9 .9]);