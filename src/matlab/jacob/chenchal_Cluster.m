%% Chenchal proposal for ocmputing data for spatial autocorrelation
nContacts = 32;
delta = 100;
% contactIndex1 and contactIndex2 is 1 pair
pairs = nchoosek(1:nContacts,2); % 496 pairs = sum(1:nContacts-1), nchoosek outputs all combinations
distance = diff(pairs')'*delta;
corrVector = nan(numel(distance),1);

% Compute corrVector
% corrVector computation here
% dataTable with labels and corrVector
dataTable = table(corrVector, distance, pairs(:,1), pairs(:,1),pairs(:,2),...
    
    ('VariableNames', {'corr', 'distance', 'chanIndex_1', 'chanIndex_2'});

% dataTable
%    corr    distance    chanIndex_1    chanIndex_2
%    ____    ________    ___________    ___________
%
%    NaN       100          1              2
%    NaN       200          1              3
%    NaN       300          1              4
%    NaN       400          1              5
%    NaN       500          1              6
%    ...
%    NaN       100          30             31
%    NaN       200          30             32
%    NaN       100          31             32

% Now we can plot distance vs corr. The columns chanIndex_1, and chanIndex_2 will serve as labels

%% Compute the dataTable.corr - Use complete SDF
% Use complete mean SDFs (nRows will be 496 if there is activity for all channels)
% Use complete trial-SDFs (nRows will be 496 * nTrials)
%% Compute the dataTable.corr - Use moving-window(or chunked - in 100 chunks) over complete SDF
% Use the complete mean SDF
% Use complete trial SDFs
%% Compute the dataTable.corr for single-units rather than multi-unit (collapse actoss single units)