function localDataPath = local_data_path


% Need to add conditional to determine whether user is on Paul's or Jacob's
% computer

homeDataPath = '/Users/paulmiddlebrooks/schalllab/local_data/';
tebaDataPath = '/Volumes/SchallLab/data/';
if isdir(tebaDataPath)
    localDataPath = '/Users/paulmiddlebrooks/schalllab/local_data/';
elseif isdir (homeDataPath)
    localDataPath = '/Users/paulmiddlebrooks/schalllab/local_data/';
else
    disp('If you''re at work you may need to connect to teba')
    return
end

