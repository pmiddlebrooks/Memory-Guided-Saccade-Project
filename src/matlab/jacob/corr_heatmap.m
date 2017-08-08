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
addpath(genpath(fullfile(matRoot,'mem')));
addpath(genpath(fullfile(matRoot,'neural')));
addpath(genpath(fullfile(matRoot,'plotting')));

% Make this project directory your working directory
cd(matRoot);

% Open a Data File

% declare subject for session list
subject = 'joule';

% Open the list of memory guided saccade sessions
fid = fopen(fullfile(dataRoot,subject, ['mem_sessions_',subject,'.csv']));

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
epochWindow = [-300 : 200];


% Begin for loop for all sessions

% session row/rows
sessionInd = 16;
session = sessionList{sessionInd};

[trialData, SessionData] = load_data(subject, session, mem_min_vars, 1);


% Sort trials based on trial type criteria

outcome = {'saccToTarget'};
Kernel.method = 'postsynaptic potential';
Kernel.growth = 1;
Kernel.decay = 20;

sdfAll = [];
%alignEvent = 'targOn';
alignEvent = 'responseOnset';

%sidename = 'left';
sidename = 'right';
side = {sidename};

trialsSide = mem_trial_selection(trialData, outcome, side);
alignSide = trialData.(alignEvent)(trialsSide);

[unitIndex, unitArrayNew] = neuronexus_plexon_mapping(SessionData.spikeUnitArray, 32);

    for i = 1 : length(unitArrayNew);
            iUnitIndex = unitIndex(i);
            [alignedRasters, alignmentIndex] = spike_to_raster(trialData.spikeData(trialsSide, iUnitIndex), alignSide);
            sdfSide = spike_density_function(alignedRasters, Kernel);
            sdfMeanSide = nanmean(sdfSide(:,epochWindow + alignmentIndex), 1);
            sdfAll = [sdfAll ; sdfMeanSide];
    end
sdfAll = fliplr(sdfAll');
unitArrayNew = flipud(unitArrayNew'); 


% Find the correlation coefficient across channels
corrcoefAll = corrcoef(sdfAll(:,:));
r_squared = (corrcoefAll).^2;
r_squared(r_squared < .5) = nan;
imagesc(r_squared);
myMap = colormap('copper');
colormap(flipud(myMap));

% figure dimensions and labels
set(gcf, 'units', 'norm', 'position', [0 0 .5 .9])

xlabel('Channels (Descending)', 'fontsize', 18);
xticklabels = {'ch32', 'ch31', 'ch30', 'ch29', 'ch28', 'ch27', 'ch26', 'ch25',...
    'ch24', 'ch23', 'ch22', 'ch21', 'ch20', 'ch19', 'ch18', 'ch17',...
    'ch16', 'ch15', 'ch14', 'ch13', 'ch12', 'ch11', 'ch10', 'ch09',...
    'ch08', 'ch07', 'ch06', 'ch05', 'ch04', 'ch03', 'ch02', 'ch01'};
xticks = linspace(1, size(sdfAll', 1), numel(xticklabels));
set(gca, 'XTick', xticks, 'XTickLabel', flipud(xticklabels(:)'))

yticklabels = {};
yticks = linspace(1, size(sdfAll', 1), numel(yticklabels));
set(gca, 'YTick', yticks, 'YTickLabel', flipud(yticklabels(:)'))

box off;

% colorbar dimensions and labels
cb = colorbar;
ylabel(cb, 'r^2', 'fontsize', 18);
title(sprintf('%s', session,'  ', alignEvent, '  ', sidename), 'fontsize', 24);

set(cb, 'units', 'norm', 'Position', [.9 .05 .02 .9],  'fontsize', 14);

% window dimensions
currentaxis = gca;
set(currentaxis, 'Position', [.0 .05 .9 .9]);