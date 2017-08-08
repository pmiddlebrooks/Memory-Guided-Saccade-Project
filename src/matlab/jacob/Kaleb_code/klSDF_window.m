movWind = [-300,200];

movSDFCell2 = cell(size(movSDFCell));
movTimes2 = cell(size(movTimeCell));
for i = 1:numel(movSDFCell),
    movSDFCell2{i} = movSDFCell{i}(:,movTimeCell{i} >= movWind(1) & movTimeCell{i} <= movWind(2));
    movTimeCell2{i} = movTimeCell{i}(:,movTimeCell{i} >= movWind(1) & movTimeCell{i} <= movWind(2));
end


visWind = [-100,400];

visSDFCell2 = cell(size(visSDFCell));
visTimes2 = cell(size(visTimeCell));
for i = 1:numel(visSDFCell),
    visSDFCell2{i} = visSDFCell{i}(:,visTimeCell{i} >= visWind(1) & visTimeCell{i} <= visWind(2));
    visTimes2{i} = visTimeCell{i}(:,visTimeCell{i} >= visWind(1) & visTimeCell{i} <= visWind(2));
end