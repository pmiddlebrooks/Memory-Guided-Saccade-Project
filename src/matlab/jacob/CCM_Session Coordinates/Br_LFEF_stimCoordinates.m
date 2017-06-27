% setup variables
dot_size = 15;
hold on;

% plot chamber cylinder
[x1,y1,z1]=cylinder(8.5,50);
[x2,y2,z2]=cylinder(8.5,50);

z1=z1 + 0;
z2= z2 - 7000;
s1=surf(x1,y1,z1);
s2=surf(x2,y2,z2);

% setup plot dimensions/variables
grid on;
axis([-10, 10, -10, 10, -7000, 1000])
title('Br LFEF CCM Penetrations', 'fontsize', 24);

set(gcf, 'units', 'norm', 'position', [0 0 .5 .9])