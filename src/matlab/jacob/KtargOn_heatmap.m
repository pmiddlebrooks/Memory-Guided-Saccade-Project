load('muaData-HeGaDa-170614.mat')

doBinary = 0;

for i = 1:numel(visCorrMats),
    thisMat = visCorrMats{3 , i};
    figure(i); 
    if doBinary
        imagesc(thisMat >= .5); hold on;
        myMap = colormap('bone');
        colormap(flipud(myMap));
        for ii = 0:24,
            plot([0,24]+.5,[ii,ii]+.5,'k');
            plot([ii,ii]+.5,[0,24]+.5,'k');
        end 
    else
        thisMat(thisMat.^2 < .5) = nan;
        imagesc(thisMat.^2); colorbar;
        myMap = colormap('bone');
        colormap(flipud(myMap));
    end
    set(gcf, 'units', 'norm', 'position', [0 0 .5 .9])
    xlabel('Channels (Descending)', 'fontsize', 18);
    box off;     
    cb = colorbar;
    ylabel(cb, 'r^2', 'fontsize', 18);    
    title(sprintf('%s', sessNames{3, i}, ' targOn'), 'fontsize', 24);
    set(cb, 'units', 'norm', 'Position', [.9 .05 .02 .9],  'fontsize', 14);
    currentaxis = gca;
    set(currentaxis, 'Position', [.0 .05 .9 .9]);
    pause     
    close all
end          
             