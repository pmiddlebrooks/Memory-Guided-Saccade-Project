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

% Extract only sessions with spike data, set epoch window
sessionList = sessionList(neuronLogical);
epochWindow = [-300 : 200];

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
sdfAllNorm = [];
alignEvent = 'responseOnset';

side = {'right'};
trialsRight = mem_trial_selection(trialData, outcome, side);
alignRight = trialData.(alignEvent)(trialsRight);

[unitIndex, unitArrayNew] = neuronexus_plexon_mapping(SessionData.spikeUnitArray, 32);

    for i = 1 : length(unitArrayNew);
            iUnitIndex = unitIndex(i);
            [alignedRasters, alignmentIndex] = spike_to_raster(trialData.spikeData(trialsRight, iUnitIndex), alignRight);
            sdfRight = spike_density_function(alignedRasters, Kernel);
            sdfMeanRight = nanmean(sdfRight(:,epochWindow + alignmentIndex), 1);
            sdfAll = [sdfAll ; sdfMeanRight];
            % normalize sdfAll for SDF across channels function
            sdfAllNorm = [sdfAllNorm ; sdfMeanRight - mean(sdfMeanRight(1:100))];
    end
sdfAll = (sdfAll');
sdfAllNorm = (sdfAllNorm');

unitArrayNew = (unitArrayNew'); 

% Plot spike density functions across channels
% Plot it on top of the rasters

%% set up plot variable
plotWindow = [-300 : 200];

figure(1)
set(gcf, 'units', 'norm', 'position', [0 0 .3 .9])
title('responseOnset right');
xlabel('time (ms)');
ylabel('Channels');
plotAdjust = 100;


set(gca, 'ytick', []);

hold on;

ch09 = plot(plotWindow, sdfAllNorm(:,1)+750 + plotAdjust, 'color', 'k');
ch10 = plot(plotWindow, sdfAllNorm(:,2)+600 + plotAdjust, 'color', 'k');
ch11 = plot(plotWindow, sdfAllNorm(:,3)+450 + plotAdjust, 'color', 'k');
ch12 = plot(plotWindow, sdfAllNorm(:,4)+300 + plotAdjust, 'color', 'k');
ch13 = plot(plotWindow, sdfAllNorm(:,5)+150 + plotAdjust, 'color', 'k');
ch14 = plot(plotWindow, sdfAllNorm(:,6)-0 + plotAdjust, 'color', 'k');
ch15 = plot(plotWindow, sdfAllNorm(:,7)-150 + plotAdjust, 'color', 'k');
ch16 = plot(plotWindow, sdfAllNorm(:,8)-300 + plotAdjust, 'color', 'k');
ch25 = plot(plotWindow, sdfAllNorm(:,9)-450 + plotAdjust, 'color', 'k');
ch26 = plot(plotWindow, sdfAllNorm(:,10)-600 + plotAdjust, 'color', 'k');
ch27 = plot(plotWindow, sdfAllNorm(:,11)-750 + plotAdjust, 'color', 'k');
ch28 = plot(plotWindow, sdfAllNorm(:,12)-900 + plotAdjust, 'color', 'k');
ch29 = plot(plotWindow, sdfAllNorm(:,13)-1050 + plotAdjust, 'color', 'k');
ch30 = plot(plotWindow, sdfAllNorm(:,14)-1200 + plotAdjust, 'color', 'k');
ch31 = plot(plotWindow, sdfAllNorm(:,15)-1350 + plotAdjust, 'color', 'k');
ch32 = plot(plotWindow, sdfAllNorm(:,16)-1500 + plotAdjust, 'color', 'k');
ch17 = plot(plotWindow, sdfAllNorm(:,17)-1650 + plotAdjust, 'color', 'k');
ch18 = plot(plotWindow, sdfAllNorm(:,18)-1800 + plotAdjust, 'color', 'k');
ch19 = plot(plotWindow, sdfAllNorm(:,19)-1950 + plotAdjust, 'color', 'k');
ch20 = plot(plotWindow, sdfAllNorm(:,20)-2100 + plotAdjust, 'color', 'k');
ch21 = plot(plotWindow, sdfAllNorm(:,21)-2250 + plotAdjust, 'color', 'k');
ch22 = plot(plotWindow, sdfAllNorm(:,22)-2400 + plotAdjust, 'color', 'k');
ch23 = plot(plotWindow, sdfAllNorm(:,23)-2550 + plotAdjust, 'color', 'k');
ch24 = plot(plotWindow, sdfAllNorm(:,24)-2700 + plotAdjust, 'color', 'k');
ch01 = plot(plotWindow, sdfAllNorm(:,25)-2850 + plotAdjust, 'color', 'k');
ch02 = plot(plotWindow, sdfAllNorm(:,26)-3000 + plotAdjust, 'color', 'k');
ch03 = plot(plotWindow, sdfAllNorm(:,27)-3150 + plotAdjust, 'color', 'k');
ch04 = plot(plotWindow, sdfAllNorm(:,28)-3300 + plotAdjust, 'color', 'k');
ch05 = plot(plotWindow, sdfAllNorm(:,29)-3450 + plotAdjust, 'color', 'k');
ch06 = plot(plotWindow, sdfAllNorm(:,30)-3600 + plotAdjust, 'color', 'k');
ch07 = plot(plotWindow, sdfAllNorm(:,31)-3750 + plotAdjust, 'color', 'k');
ch08 = plot(plotWindow, sdfAllNorm(:,32)-3900 + plotAdjust, 'color', 'k');

plot([0 0], [1000 -4000], '-k', 'lineWidth', 1);


a1 = gca;
set(a1, 'Position', [.157 .05 .63 .9]);
box off;

l=legend('ch09', 'ch010', 'ch11', 'ch12', 'ch13', 'ch14', 'ch15', 'ch16',...
    'ch25', 'ch26', 'ch27', 'ch28', 'ch29', 'ch30', 'ch31', 'ch32',...
    'ch17', 'ch18', 'ch19', 'ch20', 'ch21', 'ch22', 'ch23', 'ch24',...
    'ch01', 'ch02', 'ch03', 'ch04', 'ch05', 'ch06', 'ch07', 'ch08');

set(l, 'units', 'norm', 'Position', [.05 .05 .1 .9]);