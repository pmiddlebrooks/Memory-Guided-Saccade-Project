load('cosmanZinke-MGMUA.mat')

for i = 1:numel(movSDFs),
thisSDF = movSDFs{1, i};
figure(i); imagesc(thisSDF); colorbar;  
plotWindow = [-300 : 200];
set(gcf, 'units', 'norm', 'position', [0 0 .5 .9]);

title(sprintf('%s', session, ' responseOnset right'), 'fontsize', 24);

xlabel('Time (ms) from Saccade', 'fontsize', 16);
ylabel('Channels (Descending)', 'fontsize', 18);

currentaxis = gca;
set(currentaxis, 'Position', [.1 . 05 .63 .9]);

%rename x and y labels
xticklabels = {'-300', '-250', '-200', '-150', '-100', '-50', '0', '50', '100', '150', '200';};
xticks = linspace(1, size(sdfAll', 2), numel(xticklabels));
set(gca, 'XTick', xticks, 'XTickLabel', xticklabels);

yticklabels = {'ch09', 'ch010', 'ch11', 'ch12', 'ch13', 'ch14', 'ch15', 'ch16',...
    'ch25', 'ch26', 'ch27', 'ch28', 'ch29', 'ch30', 'ch31', 'ch32',...
    'ch17', 'ch18', 'ch19', 'ch20', 'ch21', 'ch22', 'ch23', 'ch24',...
    'ch01', 'ch02', 'ch03', 'ch04', 'ch05', 'ch06', 'ch07', 'ch08'};
yticks = linspace(1, size(sdfAll', 1), numel(yticklabels));
set(gca, 'YTick', yticks, 'YTickLabel', flipud(yticklabels(:)'), 'fontsize', 16)

vline(301, 'k-');

box off

%colorbar settings
cb = colorbar;
set(cb, 'units', 'norm', 'Position', [.73 .05 .02 .9],  'fontsize', 14);
% find the range
maxvar = max(sdfAll(1:501, :));
minvar = min(sdfAll(1:501, :));
rangevar = maxvar - minvar;
rangevar = rangevar';
pause
close all
end

imagesc((movSDFs{1,3}));

plotWindow = [-300 : 200];

set(gcf, 'units', 'norm', 'position', [0 0 .5 .9]);




xlabel('Time (ms) from Saccade', 'fontsize', 16);
ylabel('Channels (Descending)', 'fontsize', 18);

currentaxis = gca;
set(currentaxis, 'Position', [.1 .05 .63 .9]);




vline(301, 'k-');

box off

%colorbar settings
cb = colorbar;
set(cb, 'units', 'norm', 'Position', [.73 .05 .02 .9],  'fontsize', 14);
%ylabel(cb, 'Spike Density', 'fontsize', 18);


% find the range
