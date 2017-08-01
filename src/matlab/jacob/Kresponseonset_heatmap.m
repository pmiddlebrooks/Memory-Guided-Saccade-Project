load('muaData-HeGaDa-170720.mat')

doBinary = 0;

for i = 1:numel(movCorrMats),
    thisMat = movCorrMats{2 , i}; % 1=He, 2=Ga, 3=Da
    figure(i); 
    if doBinary
        imagesc(thisMat >= .5); hold on;
        myMap = colormap('copper');
        colormap(flipud(myMap));
        for ii = 0:32,
            plot([0,32]+.5,[ii,ii]+.5,'k');
            plot([ii,ii]+.5,[0,32]+.5,'k');
        end
    else
        thisMat(thisMat.^2 < .5) = nan;
        imagesc(thisMat.^2); colorbar;
        myMap = colormap('copper');
        colormap(flipud(myMap));
    end 
    set(gcf, 'units', 'norm', 'position', [0 0 .5 .9])
    xlabel('Channels (Descending)', 'fontsize', 18);
    box off;
    cb = colorbar;
    ylabel(cb, 'r^2', 'fontsize', 18);
    title(sprintf('%s', sessNames{2, i}, ' responseOnset'), 'fontsize', 24);
    set(cb, 'units', 'norm', 'Position', [.9 .05 .02 .9],  'fontsize', 14); 
    currentaxis = gca;   
    set(currentaxis, 'Position', [.0 .05 .9 .9]);
    pause     
    close all 
end
