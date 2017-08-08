% SESSION COORDINATES FOR BROCA CCM RIGHT FEF

% setup variables
dot_size = 100;
hold on;


%
% bp193n02
%

% variables
bp193n02depth = -3500;
bp193n02AP = -5;
bp193n02ML = 1;

% session depth + coordinates
bp193n02top = [bp193n02ML, bp193n02AP, 0];
bp193n02bottom = [bp193n02ML, bp193n02AP, bp193n02depth];
bp193n02 = [bp193n02top;bp193n02bottom];
plot3(bp193n02(:,1),bp193n02(:,2),bp193n02(:,3),'k', 'LineWidth', 2)

% label top point with session id
text(bp193n02ML, bp193n02AP, 0, ' bp193n02 ', 'FontSize', 16, 'FontWeight', 'bold', 'EdgeColor', 'k')


bp193n02ch01 = scatter3(bp193n02ML, bp193n02AP, bp193n02depth +    0, dot_size, 'r', 'filled');

%
% bp199n02
%

bp199n02depth = -2300;
bp199n02AP = -6;
bp199n02ML = -1;

% session depth + coordinates
bp199n02top = [bp199n02ML, bp199n02AP, 0];
bp199n02bottom = [bp199n02ML, bp199n02AP, bp199n02depth];
bp199n02 = [bp199n02top;bp199n02bottom];
plot3(bp199n02(:,1),bp199n02(:,2),bp199n02(:,3),'k', 'LineWidth', 2)

% label top point with session id
text(bp199n02ML, bp199n02AP, 0, ' bp199n02 ', 'FontSize', 16, 'FontWeight', 'bold', 'EdgeColor', 'k')

bp199n02ch24 = scatter3(bp199n02ML, bp199n02AP, bp199n02depth + 2300, dot_size, 'r', 'filled');
bp199n02ch23 = scatter3(bp199n02ML, bp199n02AP, bp199n02depth + 2200, dot_size, 'r', 'filled');
bp199n02ch22 = scatter3(bp199n02ML, bp199n02AP, bp199n02depth + 2100, dot_size, 'r', 'filled');
bp199n02ch21 = scatter3(bp199n02ML, bp199n02AP, bp199n02depth + 2000, dot_size, 'r', 'filled');
bp199n02ch20 = scatter3(bp199n02ML, bp199n02AP, bp199n02depth + 1900, dot_size, 'r', 'filled');
bp199n02ch19 = scatter3(bp199n02ML, bp199n02AP, bp199n02depth + 1800, dot_size, 'r', 'filled');
bp199n02ch18 = scatter3(bp199n02ML, bp199n02AP, bp199n02depth + 1700, dot_size, 'r', 'filled');
bp199n02ch17 = scatter3(bp199n02ML, bp199n02AP, bp199n02depth + 1600, dot_size, 'r', 'filled');
bp199n02ch16 = scatter3(bp199n02ML, bp199n02AP, bp199n02depth + 1500, dot_size, 'r', 'filled');
bp199n02ch15 = scatter3(bp199n02ML, bp199n02AP, bp199n02depth + 1400, dot_size, 'r', 'filled');
bp199n02ch14 = scatter3(bp199n02ML, bp199n02AP, bp199n02depth + 1300, dot_size, 'r', 'filled');
bp199n02ch13 = scatter3(bp199n02ML, bp199n02AP, bp199n02depth + 1200, dot_size, 'r', 'filled');
bp199n02ch12 = scatter3(bp199n02ML, bp199n02AP, bp199n02depth + 1100, dot_size, 'r', 'filled');
bp199n02ch11 = scatter3(bp199n02ML, bp199n02AP, bp199n02depth + 1000, dot_size, 'r', 'filled');
bp199n02ch10 = scatter3(bp199n02ML, bp199n02AP, bp199n02depth +  900, dot_size, 'r', 'filled');
bp199n02ch09 = scatter3(bp199n02ML, bp199n02AP, bp199n02depth +  800, dot_size, 'r', 'filled');
bp199n02ch08 = scatter3(bp199n02ML, bp199n02AP, bp199n02depth +  700, dot_size, 'r', 'filled');
bp199n02ch07 = scatter3(bp199n02ML, bp199n02AP, bp199n02depth +  600, dot_size, 'r', 'filled');
bp199n02ch06 = scatter3(bp199n02ML, bp199n02AP, bp199n02depth +  500, dot_size, 'r', 'filled');
bp199n02ch05 = scatter3(bp199n02ML, bp199n02AP, bp199n02depth +  400, dot_size, 'r', 'filled');
bp199n02ch04 = scatter3(bp199n02ML, bp199n02AP, bp199n02depth +  300, dot_size, 'r', 'filled');
bp199n02ch03 = scatter3(bp199n02ML, bp199n02AP, bp199n02depth +  200, dot_size, 'r', 'filled');
bp199n02ch02 = scatter3(bp199n02ML, bp199n02AP, bp199n02depth +  100, dot_size, 'r', 'filled');
bp199n02ch01 = scatter3(bp199n02ML, bp199n02AP, bp199n02depth +    0, dot_size, 'r', 'filled');


%
% bp200n02
%

bp200n02depth = -3300;
bp200n02AP = -7;
bp200n02ML = -0;

% session depth + coordinates
bp200n02top = [bp200n02ML, bp200n02AP, 0];
bp200n02bottom = [bp200n02ML, bp200n02AP, bp200n02depth];
bp200n02 = [bp200n02top;bp200n02bottom];
plot3(bp200n02(:,1),bp200n02(:,2),bp200n02(:,3),'k', 'LineWidth', 2)

% label top point with session id
text(bp200n02ML, bp200n02AP, 0, ' bp200n02 ', 'FontSize', 16, 'FontWeight', 'bold', 'EdgeColor', 'k')

bp200n02ch24 = scatter3(bp200n02ML, bp200n02AP, bp200n02depth + 2300, dot_size, 'r', 'filled');
bp200n02ch23 = scatter3(bp200n02ML, bp200n02AP, bp200n02depth + 2200, dot_size, 'r', 'filled');
bp200n02ch22 = scatter3(bp200n02ML, bp200n02AP, bp200n02depth + 2100, dot_size, 'r', 'filled');
bp200n02ch21 = scatter3(bp200n02ML, bp200n02AP, bp200n02depth + 2000, dot_size, 'r', 'filled');
bp200n02ch20 = scatter3(bp200n02ML, bp200n02AP, bp200n02depth + 1900, dot_size, 'r', 'filled');
bp200n02ch19 = scatter3(bp200n02ML, bp200n02AP, bp200n02depth + 1800, dot_size, 'r', 'filled');
bp200n02ch18 = scatter3(bp200n02ML, bp200n02AP, bp200n02depth + 1700, dot_size, 'r', 'filled');
bp200n02ch17 = scatter3(bp200n02ML, bp200n02AP, bp200n02depth + 1600, dot_size, 'r', 'filled');
bp200n02ch16 = scatter3(bp200n02ML, bp200n02AP, bp200n02depth + 1500, dot_size, 'r', 'filled');
bp200n02ch15 = scatter3(bp200n02ML, bp200n02AP, bp200n02depth + 1400, dot_size, 'r', 'filled');
bp200n02ch14 = scatter3(bp200n02ML, bp200n02AP, bp200n02depth + 1300, dot_size, 'r', 'filled');
bp200n02ch13 = scatter3(bp200n02ML, bp200n02AP, bp200n02depth + 1200, dot_size, 'r', 'filled');
bp200n02ch12 = scatter3(bp200n02ML, bp200n02AP, bp200n02depth + 1100, dot_size, 'r', 'filled');
bp200n02ch11 = scatter3(bp200n02ML, bp200n02AP, bp200n02depth + 1000, dot_size, 'r', 'filled');
bp200n02ch10 = scatter3(bp200n02ML, bp200n02AP, bp200n02depth +  900, dot_size, 'r', 'filled');
bp200n02ch09 = scatter3(bp200n02ML, bp200n02AP, bp200n02depth +  800, dot_size, 'r', 'filled');
bp200n02ch08 = scatter3(bp200n02ML, bp200n02AP, bp200n02depth +  700, dot_size, 'r', 'filled');
bp200n02ch07 = scatter3(bp200n02ML, bp200n02AP, bp200n02depth +  600, dot_size, 'r', 'filled');
bp200n02ch06 = scatter3(bp200n02ML, bp200n02AP, bp200n02depth +  500, dot_size, 'r', 'filled');
bp200n02ch05 = scatter3(bp200n02ML, bp200n02AP, bp200n02depth +  400, dot_size, 'r', 'filled');
bp200n02ch04 = scatter3(bp200n02ML, bp200n02AP, bp200n02depth +  300, dot_size, 'r', 'filled');
bp200n02ch03 = scatter3(bp200n02ML, bp200n02AP, bp200n02depth +  200, dot_size, 'r', 'filled');
bp200n02ch02 = scatter3(bp200n02ML, bp200n02AP, bp200n02depth +  100, dot_size, 'r', 'filled');
bp200n02ch01 = scatter3(bp200n02ML, bp200n02AP, bp200n02depth +    0, dot_size, 'r', 'filled');


%
% bp201n02
%

% variables
bp201n02depth = -4000;
bp201n02AP = -7;
bp201n02ML = -0;

% session depth + coordinates
bp201n02top = [bp201n02ML, bp201n02AP, 0];
bp201n02bottom = [bp201n02ML, bp201n02AP, bp201n02depth];
bp201n02 = [bp201n02top;bp201n02bottom];
plot3(bp201n02(:,1),bp201n02(:,2),bp201n02(:,3),'k', 'LineWidth', 2)

% label top point with session id
text(bp201n02ML, bp201n02AP, 0, ' bp201n02 ', 'FontSize', 16, 'FontWeight', 'bold', 'EdgeColor', 'k')

bp201n02ch24 = scatter3(bp201n02ML, bp201n02AP, bp201n02depth + 3450, dot_size, 'r', 'filled');
bp201n02ch23 = scatter3(bp201n02ML, bp201n02AP, bp201n02depth + 3300, dot_size, 'r', 'filled');
bp201n02ch22 = scatter3(bp201n02ML, bp201n02AP, bp201n02depth + 3150, dot_size, 'r', 'filled');
bp201n02ch21 = scatter3(bp201n02ML, bp201n02AP, bp201n02depth + 3000, dot_size, 'r', 'filled');
bp201n02ch20 = scatter3(bp201n02ML, bp201n02AP, bp201n02depth + 2850, dot_size, 'r', 'filled');
bp201n02ch19 = scatter3(bp201n02ML, bp201n02AP, bp201n02depth + 2700, dot_size, 'r', 'filled');
bp201n02ch18 = scatter3(bp201n02ML, bp201n02AP, bp201n02depth + 2550, dot_size, 'r', 'filled');
bp201n02ch17 = scatter3(bp201n02ML, bp201n02AP, bp201n02depth + 2400, dot_size, 'r', 'filled');
bp201n02ch16 = scatter3(bp201n02ML, bp201n02AP, bp201n02depth + 2250, dot_size, 'r', 'filled');
bp201n02ch15 = scatter3(bp201n02ML, bp201n02AP, bp201n02depth + 2100, dot_size, 'r', 'filled');
bp201n02ch14 = scatter3(bp201n02ML, bp201n02AP, bp201n02depth + 1950, dot_size, 'r', 'filled');
bp201n02ch13 = scatter3(bp201n02ML, bp201n02AP, bp201n02depth + 1800, dot_size, 'r', 'filled');
bp201n02ch12 = scatter3(bp201n02ML, bp201n02AP, bp201n02depth + 1650, dot_size, 'r', 'filled');
bp201n02ch11 = scatter3(bp201n02ML, bp201n02AP, bp201n02depth + 1500, dot_size, 'r', 'filled');
bp201n02ch10 = scatter3(bp201n02ML, bp201n02AP, bp201n02depth + 1350, dot_size, 'r', 'filled');
bp201n02ch09 = scatter3(bp201n02ML, bp201n02AP, bp201n02depth + 1200, dot_size, 'r', 'filled');
bp201n02ch08 = scatter3(bp201n02ML, bp201n02AP, bp201n02depth + 1050, dot_size, 'r', 'filled');
bp201n02ch07 = scatter3(bp201n02ML, bp201n02AP, bp201n02depth +  900, dot_size, 'r', 'filled');
bp201n02ch06 = scatter3(bp201n02ML, bp201n02AP, bp201n02depth +  750, dot_size, 'r', 'filled');
bp201n02ch05 = scatter3(bp201n02ML, bp201n02AP, bp201n02depth +  600, dot_size, 'r', 'filled');
bp201n02ch04 = scatter3(bp201n02ML, bp201n02AP, bp201n02depth +  450, dot_size, 'r', 'filled');
bp201n02ch03 = scatter3(bp201n02ML, bp201n02AP, bp201n02depth +  300, dot_size, 'r', 'filled');
bp201n02ch02 = scatter3(bp201n02ML, bp201n02AP, bp201n02depth +  150, dot_size, 'r', 'filled');
bp201n02ch01 = scatter3(bp201n02ML, bp201n02AP, bp201n02depth +    0, dot_size, 'r', 'filled');


%
% bp205n02
%

% variables
bp205n02depth = -8000;
bp205n02AP = -6;
bp205n02ML = 1;

% session depth + coordinates
bp205n02top = [bp205n02ML, bp205n02AP, 0];
bp205n02bottom = [bp205n02ML, bp205n02AP, bp205n02depth];
bp205n02 = [bp205n02top;bp205n02bottom];
plot3(bp205n02(:,1),bp205n02(:,2),bp205n02(:,3),'k')

% label top point with session id
text(bp205n02ML, bp205n02AP, 0, ' bp205n02 ', 'FontSize', 16, 'FontWeight', 'bold', 'EdgeColor', 'k')


bp205n02ch08 = scatter3(bp205n02ML, bp205n02AP, bp205n02depth + 1400, dot_size, 'r', 'filled');
bp205n02ch07 = scatter3(bp205n02ML, bp205n02AP, bp205n02depth + 1200, dot_size, 'r', 'filled');
bp205n02ch06 = scatter3(bp205n02ML, bp205n02AP, bp205n02depth + 1000, dot_size, 'r', 'filled');
bp205n02ch05 = scatter3(bp205n02ML, bp205n02AP, bp205n02depth +  800, dot_size, 'r', 'filled');
bp205n02ch04 = scatter3(bp205n02ML, bp205n02AP, bp205n02depth +  600, dot_size, 'r', 'filled');
bp205n02ch03 = scatter3(bp205n02ML, bp205n02AP, bp205n02depth +  400, dot_size, 'r', 'filled');
bp205n02ch02 = scatter3(bp205n02ML, bp205n02AP, bp205n02depth +  200, dot_size, 'r', 'filled');
bp205n02ch01 = scatter3(bp205n02ML, bp205n02AP, bp205n02depth +    0, dot_size, 'r', 'filled');




% plot chamber cylinder
[x1,y1,z1]=cylinder(9.5,50);
[x2,y2,z2]=cylinder(9.5,50);

z1=z1 + 0;
z2= z2 - 10000;
s1=surf(x1,y1,z1, 'LineWidth', 5);
s2=surf(x2,y2,z2, 'LineWidth', 5);


% plot transparent planes to show depths

% x1 = -10;
% x2 = 10;
% x3 = 10;
% x4 = -10;
% 
% y1 = 10;
% y2 = 10;
% y3 = 10;
% y4 = 10;
% 
% z1 = 1000;
% z2 = 1000;
% z3 = -10000;
% z4 = -10000;
% 
% 
% p1 = patch( [x1 x2 x3 x4 x1], [y1 y2 y3 y4 y1], [z1 z2 z3 z4 z1], 'k' );
%         set(p1,'FaceAlpha',0.1);











% setup plot dimensions/variables
grid on;
set(gca,'LineWidth',3)
box on;
axis([-10, 10, -10, 10, -10000, 1000])
title('Br RFEF CCM Penetrations', 'fontsize', 24);

ax = gca; % current axes
ax.FontSize = 16;
ax.XTick = -10:1:10;
ax.YTick = -10:1:10;
ax.ZTick = -10000:500:1000;

xlabel('Medial - Lateral (mm)', 'fontsize', 24);
xticklabels = {'M10', 'M9', 'M8', 'M7', 'M6', 'M5', 'M4', 'M3',...
    'M2', 'M1', 'ML0', 'L1', 'L2', 'L3', 'L4', 'L5',...
    'L6', 'L7', 'L8', 'L9', 'L10'};
set(gca, 'XTick', xticks, 'XTickLabel', xticklabels(:))

ylabel('Anterior - Posterior (mm)', 'fontsize', 24);
yticklabels = {'P10', 'P9', 'P8', 'P7', 'P6', 'P5', 'P4', 'P3',...
    'P2', 'P1', 'AP0', 'A1', 'A2', 'A3', 'A4', 'A5',...
    'A6', 'A7', 'A8', 'A9', 'A10'};
set(gca, 'YTick', yticks, 'YTickLabel', yticklabels(:))

zlabel('Penetration Depth (?m)', 'fontsize', 24);

set(gcf, 'units', 'norm', 'position', [0 0 .5 .9])

