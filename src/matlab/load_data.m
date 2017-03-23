function [trialData, SessionData, ExtraVariable] = load_data(subject, sessionID, variables)
% function [trialData, SessionData] = load_data(subjectID, sessionID)
%
% Loads a data file and does some minimal processing common to lots of
% analyses

switch lower(subject)
    case 'joule';
        tebaID = 'Joule';
    case 'broca';
        tebaID = 'Broca';
end

ExtraVariable = struct();


% Add ".mat" to sessionID
if ~strcmp(sessionID(end-3:end), '.mat')
    sessionID = [sessionID, '.mat'];
end




% Figure out where the data files are on teba and locally
tebaDataPath = '/Volumes/SchallLab/data/';
tebaDataFile = fullfile(tebaDataPath, tebaID, sessionID);

localDataFile = fullfile(local_data_path, subject, sessionID);


% If the file hasn't already been copied to a local directory, do it now
if exist(localDataFile, 'file') ~= 2
    copyfile(tebaDataFile, fullfile(local_data_path, subject))
    fprintf('Loaded session %s\n', sessionID);
end



% If you specified particular variables to load beyond the default
% behavioral vriables, load them
if nargin > 3
    trialData = load(localDataFile, variables{:});
else
    trialData = load(localDataFile);
end
SessionData = trialData.SessionData;
trialData = rmfield(trialData, 'SessionData');



% Assign the task ID
if isfield(SessionData, 'taskID')
    task = SessionData.taskID;
elseif isfield(SessionData.task, 'taskID')
    task = SessionData.task.taskID;
end


% Convert cells to doubles if necessary
trialData = cell_to_mat(trialData);
trialData.iTrial = (1 : size(trialData.trialOutcome,1))';



% Always calculate RTs and add them to the variables to load:

trialData.rt = trialData.responseOnset - trialData.responseCueOn;

ExtraVariable.targAngleArray = unique(trialData.targAngle(~isnan(trialData.targAngle)));



% Want to get rid of trials that were mistakenly recored with targets at
% the wrong angles (happens sometimes at the beginning of a task session
% recording when the angles were set wrong). For now, sue the criteria that
% a target must have at ewast 7 trials to considered legitimate
lowNTarg = zeros(size(trialData.trialOutcome, 1), 1);
for i = 1 : length(ExtraVariable.targAngleArray)
    iTrial = trialData.targAngle == ExtraVariable.targAngleArray(i);
    if sum(iTrial) <= 7
        lowNTarg(iTrial) = 1;
    end
end
if sum(lowNTarg)
    trialData = structfun(@(x) x(~logical(lowNTarg), :), trialData, 'uni', false);
end
