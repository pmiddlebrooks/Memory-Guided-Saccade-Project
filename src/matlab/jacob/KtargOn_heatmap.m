load('cosmanZinke-MGMUA.mat')
for i = 1:numel(visCorrMats),
thisMat = visCorrMats{1  , i};
thisMat(thisMat.^2 < .5) = nan;
figure(i); imagesc(thisMat.^2); colorbar;  
set(gcf, 'units', 'norm', 'position', [0 0 .5 .9])
xlabel('Channels (Descending)', 'fontsize', 18);
box off;
cb = colorbar;
ylabel(cb, 'r^2', 'fontsize', 18);
title(sprintf('%s', session, ' targOn'), 'fontsize', 24);
set(cb, 'units', 'norm', 'Position', [.9 .05 .02 .9],  'fontsize', 14);
currentaxis = gca;
set(currentaxis, 'Position', [.0 .05 .9 .9]);
pause
close all
end     
             