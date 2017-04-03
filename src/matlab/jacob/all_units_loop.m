%% Establish working environment and and matlab paths

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
cd(matRoot)


%% Open a Data File

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
epochWindow = [-500 : 500];


%% Begin for loop for all sessions

% session row/rows
sessionInd = 1;
session = sessionList{sessionInd};

[trialData, SessionData] = load_data(subject, session, dataRoot)


% Sort trials based on trial type criteria

outcome = {'saccToTarget'};
side = {'left'};
alignEvent = 'targOn';
Kernel.method = 'postsynaptic potential';
Kernel.growth = 1;
Kernel.decay = 20;

unitAll = [];
sdfAll = [];

trials = mem_trial_selection(trialData, outcome, side);
alignList = trialData.(alignEvent)(trials);
    for i = 1 : length(SessionData.spikeUnitArray);
%             unitIndex = SessionData.spikeUnitArray{i};
            [alignedRasters, alignmentIndex] = spike_to_raster(trialData.spikeData(trials, i), alignList);
            sdf = spike_density_function(alignedRasters, Kernel);
            sdfMean = nanmean(sdf, 1);
            sdfAll = [sdfAll ; sdfMean(epochWindow + alignmentIndex)];
    end
            
