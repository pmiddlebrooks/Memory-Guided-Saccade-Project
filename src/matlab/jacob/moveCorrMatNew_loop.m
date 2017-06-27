for i = 1:numel(movSDFTimes),
    movSDFsNew{i} = movSDFs{i};
    if ~isnan(movSDFTimes{i}),
        movSDFsNew{i} = movSDFsNew{i}(:,movSDFTimes{i} >= -300 & movSDFTimes{i} <= 200);
        movSDFTimes{i} = movSDFTimes{i}(movSDFTimes{i} >= -300 & movSDFTimes{i} <= 200);
    end
end
movCorrMatNew = cellfun(@(x) corr(x'),movSDFsNew,'UniformOutput',0);