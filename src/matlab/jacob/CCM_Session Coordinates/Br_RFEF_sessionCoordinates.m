% setup variables
dot_size = 100;
hold on;


%
% bp193n02
%

% variables
bpREPLACEdepth = -3500;
bpREPLACEAP = -5;
bpREPLACEML = 1;

% session depth + coordinates
bpREPLACEtop = [bpREPLACEML, bpREPLACEAP, 0];
bpREPLACEbottom = [bpREPLACEML, bpREPLACEAP, bpREPLACEdepth];
bpREPLACE = [bpREPLACEtop;bpREPLACEbottom];
plot3(bpREPLACE(:,1),bpREPLACE(:,2),bpREPLACE(:,3),'k')


bpREPLACEch01 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth +    0, dot_size, 'r', 'filled');

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
plot3(bp199n02(:,1),bp199n02(:,2),bp199n02(:,3),'k')

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
plot3(bp200n02(:,1),bp200n02(:,2),bp200n02(:,3),'k')

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
plot3(bp201n02(:,1),bp201n02(:,2),bp201n02(:,3),'k')

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











% plot chamber cylinder
[x1,y1,z1]=cylinder(9.5,50);
[x2,y2,z2]=cylinder(9.5,50);

z1=z1 + 0;
z2= z2 - 7000;
s1=surf(x1,y1,z1);
s2=surf(x2,y2,z2);

% setup plot dimensions/variables
grid on;
set(gca,'LineWidth',3)
box on;
axis([-10, 10, -10, 10, -7000, 1000])
title('Br RFEF CCM Penetrations', 'fontsize', 24);

set(gcf, 'units', 'norm', 'position', [0 0 .5 .9])
