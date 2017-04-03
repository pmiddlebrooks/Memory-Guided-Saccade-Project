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

sessionDataAll = [];
unitAll = [];
outcome = {'saccToTarget'};
side = {'right'};
for i = 1 : length(sessionList)
        sessionInd = sessionList{i};
        session = sessionInd;
        [trialData_i, SessionData] = load_data(subject, session, dataRoot);
        trials = mem_trial_selection(trialData_i, outcome, side);
        sessionDataAll = [sessionDataAll , trialData_i];
        for i = 1 : length(SessionData.spikeUnitArray);
            unitIndex = SessionData.spikeUnitArray{i};
            alignEvent = 'targOn';
            alignList = trialData_i.(alignEvent)(trials);
            unitAll = [unitAll , trialData_i];
            [alignedRasters, alignmentIndex] = spike_to_raster(trialData_i.spikeData(trials, unitIndex), alignList);

        end
            
end



%% Plot each raster to see each trial's spiking times

% Set up plot variables
plotWindow = [-500 : 500];
nTrial = length(trials);

% Open a plot and tell matlab to hold the axes so we can plot multiple things on it
figure(1)
colormap(flipud(gray))
hold all;

% Plot the rasters    
imagesc(plotWindow, 1 : nTrial, alignedRasters(:, alignmentIndex + plotWindow))
set(gca,'YDir','normal') % gca = current axis or chart

% Plot a vertical line where event occured
plot([0 0], [0 nTrial*.8], '-k', 'lineWidth', 3)

% Change axes limits to whatever you desire
ylim([0 nTrial])
xlim([plotWindow(1) plotWindow(end)])


%% Convert rasters to spike density function
% Define a kernel to convolve rasters - can be 'postsynaptic potential' or
% 'gaussian', with appropriate parameters:
Kernel.method = 'postsynaptic potential';
Kernel.growth = 1;
Kernel.decay = 20;
% Kernel.method = 'gaussian';
% Kernel.sigma = 10;


sdf = spike_density_function(alignedRasters, Kernel);

sdfMean = nanmean(sdf, 1);


%% Plot spike density function over rasters
% Plot it on top of the rasters
figure(1)
plot(plotWindow, sdfMean(:, alignmentIndex + plotWindow), 'color', 'k', 'lineWidth', 3)

% Alter y-axis to see whole SDF
ylim([0 1.1* max(sdfMean)])

%% Output csv of sdfMean
cell_of_interest = sdfMean;
S = stack(neuronLogical,vars,Name,Value)

