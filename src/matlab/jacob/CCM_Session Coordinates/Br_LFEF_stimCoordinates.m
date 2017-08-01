% setup variables
dot_size = 100;
sacc_yes = 'r';
sacc_no = 'k';

hold on;

%
% bpLFEFStim2_6_15
%

% variables
bpLFEFStim2_6_15depth = -7200;
bpLFEFStim2_6_15AP = -4;
bpLFEFStim2_6_15ML = -3.5;

% session depth + coordinates
bpLFEFStim2_6_15top = [bpLFEFStim2_6_15ML, bpLFEFStim2_6_15AP, 0];
bpLFEFStim2_6_15bottom = [bpLFEFStim2_6_15ML, bpLFEFStim2_6_15AP, bpLFEFStim2_6_15depth];
bpLFEFStim2_6_15 = [bpLFEFStim2_6_15top;bpLFEFStim2_6_15bottom];
plot3(bpLFEFStim2_6_15(:,1),bpLFEFStim2_6_15(:,2),bpLFEFStim2_6_15(:,3), 'r')

bpLFEFStim2_6_15ch13 = scatter3(bpLFEFStim2_6_15ML, bpLFEFStim2_6_15AP, bpLFEFStim2_6_15depth + 5700, dot_size, sacc_yes, 'filled');
bpLFEFStim2_6_15ch12 = scatter3(bpLFEFStim2_6_15ML, bpLFEFStim2_6_15AP, bpLFEFStim2_6_15depth + 5200, dot_size, sacc_yes, 'filled');
bpLFEFStim2_6_15ch11 = scatter3(bpLFEFStim2_6_15ML, bpLFEFStim2_6_15AP, bpLFEFStim2_6_15depth + 4700, dot_size, sacc_yes, 'filled');
bpLFEFStim2_6_15ch10 = scatter3(bpLFEFStim2_6_15ML, bpLFEFStim2_6_15AP, bpLFEFStim2_6_15depth + 4200, dot_size, sacc_yes, 'filled');
bpLFEFStim2_6_15ch09 = scatter3(bpLFEFStim2_6_15ML, bpLFEFStim2_6_15AP, bpLFEFStim2_6_15depth + 3700, dot_size, sacc_yes, 'filled');
bpLFEFStim2_6_15ch08 = scatter3(bpLFEFStim2_6_15ML, bpLFEFStim2_6_15AP, bpLFEFStim2_6_15depth + 3200, dot_size, sacc_yes, 'filled');
bpLFEFStim2_6_15ch07 = scatter3(bpLFEFStim2_6_15ML, bpLFEFStim2_6_15AP, bpLFEFStim2_6_15depth + 3000, dot_size, sacc_yes, 'filled');
bpLFEFStim2_6_15ch06 = scatter3(bpLFEFStim2_6_15ML, bpLFEFStim2_6_15AP, bpLFEFStim2_6_15depth + 2500, dot_size, sacc_yes, 'filled');
bpLFEFStim2_6_15ch05 = scatter3(bpLFEFStim2_6_15ML, bpLFEFStim2_6_15AP, bpLFEFStim2_6_15depth + 2000, dot_size, sacc_yes, 'filled');
bpLFEFStim2_6_15ch04 = scatter3(bpLFEFStim2_6_15ML, bpLFEFStim2_6_15AP, bpLFEFStim2_6_15depth + 1500, dot_size, sacc_no, 'filled');
bpLFEFStim2_6_15ch03 = scatter3(bpLFEFStim2_6_15ML, bpLFEFStim2_6_15AP, bpLFEFStim2_6_15depth + 1000, dot_size, sacc_yes, 'filled');
bpLFEFStim2_6_15ch02 = scatter3(bpLFEFStim2_6_15ML, bpLFEFStim2_6_15AP, bpLFEFStim2_6_15depth +  500, dot_size, sacc_yes, 'filled');
bpLFEFStim2_6_15ch01 = scatter3(bpLFEFStim2_6_15ML, bpLFEFStim2_6_15AP, bpLFEFStim2_6_15depth +    0, dot_size, sacc_yes, 'filled');

%
% bpLFEFStim2_10_15
%

% variables
bpLFEFStim2_10_15depth = -6475;
bpLFEFStim2_10_15AP = -4;
bpLFEFStim2_10_15ML = -4.5;

% session depth + coordinates
bpLFEFStim2_10_15top = [bpLFEFStim2_10_15ML, bpLFEFStim2_10_15AP, 0];
bpLFEFStim2_10_15bottom = [bpLFEFStim2_10_15ML, bpLFEFStim2_10_15AP, bpLFEFStim2_10_15depth];
bpLFEFStim2_10_15 = [bpLFEFStim2_10_15top;bpLFEFStim2_10_15bottom];
plot3(bpLFEFStim2_10_15(:,1),bpLFEFStim2_10_15(:,2),bpLFEFStim2_10_15(:,3), 'r', 'LineWidth', 2)

bpLFEFStim2_10_15ch06 = scatter3(bpLFEFStim2_10_15ML, bpLFEFStim2_10_15AP, bpLFEFStim2_10_15depth + 3200, dot_size, sacc_yes, 'filled');
bpLFEFStim2_10_15ch05 = scatter3(bpLFEFStim2_10_15ML, bpLFEFStim2_10_15AP, bpLFEFStim2_10_15depth + 2900, dot_size, sacc_yes, 'filled');
bpLFEFStim2_10_15ch04 = scatter3(bpLFEFStim2_10_15ML, bpLFEFStim2_10_15AP, bpLFEFStim2_10_15depth + 2400, dot_size, sacc_yes, 'filled');
bpLFEFStim2_10_15ch03 = scatter3(bpLFEFStim2_10_15ML, bpLFEFStim2_10_15AP, bpLFEFStim2_10_15depth + 2000, dot_size, sacc_yes, 'filled');
bpLFEFStim2_10_15ch02 = scatter3(bpLFEFStim2_10_15ML, bpLFEFStim2_10_15AP, bpLFEFStim2_10_15depth + 1300, dot_size, sacc_yes, 'filled');
bpLFEFStim2_10_15ch01 = scatter3(bpLFEFStim2_10_15ML, bpLFEFStim2_10_15AP, bpLFEFStim2_10_15depth +    0, dot_size,  sacc_no, 'filled');


%
% bpLFEFStim2_19_15
%

% variables
bpLFEFStim2_19_15depth = -4050;
bpLFEFStim2_19_15AP = -4.5;
bpLFEFStim2_19_15ML = -4.5;

% session depth + coordinates
bpLFEFStim2_19_15top = [bpLFEFStim2_19_15ML, bpLFEFStim2_19_15AP, 0];
bpLFEFStim2_19_15bottom = [bpLFEFStim2_19_15ML, bpLFEFStim2_19_15AP, bpLFEFStim2_19_15depth];
bpLFEFStim2_19_15 = [bpLFEFStim2_19_15top;bpLFEFStim2_19_15bottom];
plot3(bpLFEFStim2_19_15(:,1),bpLFEFStim2_19_15(:,2),bpLFEFStim2_19_15(:,3), 'r', 'LineWidth', 2)


bpLFEFStim2_19_15ch10 = scatter3(bpLFEFStim2_19_15ML, bpLFEFStim2_19_15AP, bpLFEFStim2_19_15depth + 3100, dot_size, sacc_yes, 'filled');
bpLFEFStim2_19_15ch09 = scatter3(bpLFEFStim2_19_15ML, bpLFEFStim2_19_15AP, bpLFEFStim2_19_15depth + 2800, dot_size, sacc_yes, 'filled');
bpLFEFStim2_19_15ch08 = scatter3(bpLFEFStim2_19_15ML, bpLFEFStim2_19_15AP, bpLFEFStim2_19_15depth + 2500, dot_size, sacc_yes, 'filled');
bpLFEFStim2_19_15ch07 = scatter3(bpLFEFStim2_19_15ML, bpLFEFStim2_19_15AP, bpLFEFStim2_19_15depth + 2100, dot_size, sacc_yes, 'filled');
bpLFEFStim2_19_15ch06 = scatter3(bpLFEFStim2_19_15ML, bpLFEFStim2_19_15AP, bpLFEFStim2_19_15depth + 1800, dot_size, sacc_yes, 'filled');
bpLFEFStim2_19_15ch05 = scatter3(bpLFEFStim2_19_15ML, bpLFEFStim2_19_15AP, bpLFEFStim2_19_15depth + 1200, dot_size, sacc_yes, 'filled');
bpLFEFStim2_19_15ch04 = scatter3(bpLFEFStim2_19_15ML, bpLFEFStim2_19_15AP, bpLFEFStim2_19_15depth +  900, dot_size, sacc_yes, 'filled');
bpLFEFStim2_19_15ch03 = scatter3(bpLFEFStim2_19_15ML, bpLFEFStim2_19_15AP, bpLFEFStim2_19_15depth +  600, dot_size, sacc_yes, 'filled');
bpLFEFStim2_19_15ch02 = scatter3(bpLFEFStim2_19_15ML, bpLFEFStim2_19_15AP, bpLFEFStim2_19_15depth +  300, dot_size, sacc_yes, 'filled');
bpLFEFStim2_19_15ch01 = scatter3(bpLFEFStim2_19_15ML, bpLFEFStim2_19_15AP, bpLFEFStim2_19_15depth +    0, dot_size, sacc_yes, 'filled');


%
% bpLFEFStim2_27_15
%

% variables
bpLFEFStim2_27_15depth = -4600;
bpLFEFStim2_27_15AP = -4;
bpLFEFStim2_27_15ML = -4;

% session depth + coordinates
bpLFEFStim2_27_15top = [bpLFEFStim2_27_15ML, bpLFEFStim2_27_15AP, 0];
bpLFEFStim2_27_15bottom = [bpLFEFStim2_27_15ML, bpLFEFStim2_27_15AP, bpLFEFStim2_27_15depth];
bpLFEFStim2_27_15 = [bpLFEFStim2_27_15top;bpLFEFStim2_27_15bottom];
plot3(bpLFEFStim2_27_15(:,1),bpLFEFStim2_27_15(:,2),bpLFEFStim2_27_15(:,3), 'r', 'LineWidth', 2)


bpLFEFStim2_27_15ch04 = scatter3(bpLFEFStim2_27_15ML, bpLFEFStim2_27_15AP, bpLFEFStim2_27_15depth + 3300, dot_size, sacc_no, 'filled');
bpLFEFStim2_27_15ch03 = scatter3(bpLFEFStim2_27_15ML, bpLFEFStim2_27_15AP, bpLFEFStim2_27_15depth + 3000, dot_size, sacc_yes, 'filled');
bpLFEFStim2_27_15ch02 = scatter3(bpLFEFStim2_27_15ML, bpLFEFStim2_27_15AP, bpLFEFStim2_27_15depth + 2700, dot_size, sacc_yes, 'filled');
bpLFEFStim2_27_15ch01 = scatter3(bpLFEFStim2_27_15ML, bpLFEFStim2_27_15AP, bpLFEFStim2_27_15depth +    0, dot_size, sacc_yes, 'filled');

%
% bpLFEFStim3_04_15
%

% variables
bpLFEFStim3_04_15depth = -3600;
bpLFEFStim3_04_15AP = -1.5;
bpLFEFStim3_04_15ML = -3;

% session depth + coordinates
bpLFEFStim3_04_15top = [bpLFEFStim3_04_15ML, bpLFEFStim3_04_15AP, 0];
bpLFEFStim3_04_15bottom = [bpLFEFStim3_04_15ML, bpLFEFStim3_04_15AP, bpLFEFStim3_04_15depth];
bpLFEFStim3_04_15 = [bpLFEFStim3_04_15top;bpLFEFStim3_04_15bottom];
plot3(bpLFEFStim3_04_15(:,1),bpLFEFStim3_04_15(:,2),bpLFEFStim3_04_15(:,3), 'r', 'LineWidth', 2)

bpLFEFStim3_04_15ch10 = scatter3(bpLFEFStim3_04_15ML, bpLFEFStim3_04_15AP, bpLFEFStim3_04_15depth + 2500, dot_size, sacc_no, 'filled');
bpLFEFStim3_04_15ch09 = scatter3(bpLFEFStim3_04_15ML, bpLFEFStim3_04_15AP, bpLFEFStim3_04_15depth + 2200, dot_size, sacc_no, 'filled');
bpLFEFStim3_04_15ch08 = scatter3(bpLFEFStim3_04_15ML, bpLFEFStim3_04_15AP, bpLFEFStim3_04_15depth + 1700, dot_size, sacc_no, 'filled');
bpLFEFStim3_04_15ch07 = scatter3(bpLFEFStim3_04_15ML, bpLFEFStim3_04_15AP, bpLFEFStim3_04_15depth + 1500, dot_size, sacc_yes, 'filled');
bpLFEFStim3_04_15ch06 = scatter3(bpLFEFStim3_04_15ML, bpLFEFStim3_04_15AP, bpLFEFStim3_04_15depth + 1200, dot_size, sacc_yes, 'filled');
bpLFEFStim3_04_15ch05 = scatter3(bpLFEFStim3_04_15ML, bpLFEFStim3_04_15AP, bpLFEFStim3_04_15depth + 1000, dot_size, sacc_yes, 'filled');
bpLFEFStim3_04_15ch04 = scatter3(bpLFEFStim3_04_15ML, bpLFEFStim3_04_15AP, bpLFEFStim3_04_15depth +  800, dot_size, sacc_yes, 'filled');
bpLFEFStim3_04_15ch03 = scatter3(bpLFEFStim3_04_15ML, bpLFEFStim3_04_15AP, bpLFEFStim3_04_15depth +  500, dot_size, sacc_yes, 'filled');
bpLFEFStim3_04_15ch02 = scatter3(bpLFEFStim3_04_15ML, bpLFEFStim3_04_15AP, bpLFEFStim3_04_15depth +  200, dot_size, sacc_yes, 'filled');
bpLFEFStim3_04_15ch01 = scatter3(bpLFEFStim3_04_15ML, bpLFEFStim3_04_15AP, bpLFEFStim3_04_15depth +    0, dot_size, sacc_yes, 'filled');


%
% bpLFEFStim3_12_15
%

% variables
bpLFEFStim3_12_15depth = -6800;
bpLFEFStim3_12_15AP = -1.5;
bpLFEFStim3_12_15ML = -4;

% session depth + coordinates
bpLFEFStim3_12_15top = [bpLFEFStim3_12_15ML, bpLFEFStim3_12_15AP, 0];
bpLFEFStim3_12_15bottom = [bpLFEFStim3_12_15ML, bpLFEFStim3_12_15AP, bpLFEFStim3_12_15depth];
bpLFEFStim3_12_15 = [bpLFEFStim3_12_15top;bpLFEFStim3_12_15bottom];
plot3(bpLFEFStim3_12_15(:,1),bpLFEFStim3_12_15(:,2),bpLFEFStim3_12_15(:,3), 'r', 'LineWidth', 2)

bpLFEFStim3_12_15ch16 = scatter3(bpLFEFStim3_12_15ML, bpLFEFStim3_12_15AP, bpLFEFStim3_12_15depth + 5400, dot_size, sacc_no, 'filled');
bpLFEFStim3_12_15ch15 = scatter3(bpLFEFStim3_12_15ML, bpLFEFStim3_12_15AP, bpLFEFStim3_12_15depth + 5000, dot_size, sacc_no, 'filled');
bpLFEFStim3_12_15ch14 = scatter3(bpLFEFStim3_12_15ML, bpLFEFStim3_12_15AP, bpLFEFStim3_12_15depth + 4600, dot_size, sacc_no, 'filled');
bpLFEFStim3_12_15ch13 = scatter3(bpLFEFStim3_12_15ML, bpLFEFStim3_12_15AP, bpLFEFStim3_12_15depth + 4300, dot_size, sacc_no, 'filled');
bpLFEFStim3_12_15ch12 = scatter3(bpLFEFStim3_12_15ML, bpLFEFStim3_12_15AP, bpLFEFStim3_12_15depth + 4000, dot_size, sacc_no, 'filled');
bpLFEFStim3_12_15ch11 = scatter3(bpLFEFStim3_12_15ML, bpLFEFStim3_12_15AP, bpLFEFStim3_12_15depth + 3700, dot_size, sacc_no, 'filled');
bpLFEFStim3_12_15ch10 = scatter3(bpLFEFStim3_12_15ML, bpLFEFStim3_12_15AP, bpLFEFStim3_12_15depth + 3300, dot_size, sacc_no, 'filled');
bpLFEFStim3_12_15ch09 = scatter3(bpLFEFStim3_12_15ML, bpLFEFStim3_12_15AP, bpLFEFStim3_12_15depth + 3000, dot_size, sacc_no, 'filled');
bpLFEFStim3_12_15ch08 = scatter3(bpLFEFStim3_12_15ML, bpLFEFStim3_12_15AP, bpLFEFStim3_12_15depth + 2800, dot_size, sacc_no, 'filled');
bpLFEFStim3_12_15ch07 = scatter3(bpLFEFStim3_12_15ML, bpLFEFStim3_12_15AP, bpLFEFStim3_12_15depth + 2300, dot_size, sacc_no, 'filled');
bpLFEFStim3_12_15ch06 = scatter3(bpLFEFStim3_12_15ML, bpLFEFStim3_12_15AP, bpLFEFStim3_12_15depth + 1900, dot_size, sacc_no, 'filled');
bpLFEFStim3_12_15ch05 = scatter3(bpLFEFStim3_12_15ML, bpLFEFStim3_12_15AP, bpLFEFStim3_12_15depth + 1500, dot_size, sacc_no, 'filled');
bpLFEFStim3_12_15ch04 = scatter3(bpLFEFStim3_12_15ML, bpLFEFStim3_12_15AP, bpLFEFStim3_12_15depth +  800, dot_size, sacc_yes, 'filled');
bpLFEFStim3_12_15ch03 = scatter3(bpLFEFStim3_12_15ML, bpLFEFStim3_12_15AP, bpLFEFStim3_12_15depth +  500, dot_size, sacc_no, 'filled');
bpLFEFStim3_12_15ch02 = scatter3(bpLFEFStim3_12_15ML, bpLFEFStim3_12_15AP, bpLFEFStim3_12_15depth +  200, dot_size, sacc_yes, 'filled');
bpLFEFStim3_12_15ch01 = scatter3(bpLFEFStim3_12_15ML, bpLFEFStim3_12_15AP, bpLFEFStim3_12_15depth +    0, dot_size, sacc_yes, 'filled');

%
% bpLFEFStim3_17_15
%

% variables
bpLFEFStim3_17_15depth = -5700;
bpLFEFStim3_17_15AP = -2.5;
bpLFEFStim3_17_15ML = -4;

% session depth + coordinates
bpLFEFStim3_17_15top = [bpLFEFStim3_17_15ML, bpLFEFStim3_17_15AP, 0];
bpLFEFStim3_17_15bottom = [bpLFEFStim3_17_15ML, bpLFEFStim3_17_15AP, bpLFEFStim3_17_15depth];
bpLFEFStim3_17_15 = [bpLFEFStim3_17_15top;bpLFEFStim3_17_15bottom];
plot3(bpLFEFStim3_17_15(:,1),bpLFEFStim3_17_15(:,2),bpLFEFStim3_17_15(:,3), 'r', 'LineWidth', 2)

bpLFEFStim3_17_15ch05 = scatter3(bpLFEFStim3_17_15ML, bpLFEFStim3_17_15AP, bpLFEFStim3_17_15depth + 4400, dot_size, sacc_no, 'filled');
bpLFEFStim3_17_15ch04 = scatter3(bpLFEFStim3_17_15ML, bpLFEFStim3_17_15AP, bpLFEFStim3_17_15depth + 3400, dot_size, sacc_no, 'filled');
bpLFEFStim3_17_15ch03 = scatter3(bpLFEFStim3_17_15ML, bpLFEFStim3_17_15AP, bpLFEFStim3_17_15depth + 2400, dot_size, sacc_yes, 'filled');
bpLFEFStim3_17_15ch02 = scatter3(bpLFEFStim3_17_15ML, bpLFEFStim3_17_15AP, bpLFEFStim3_17_15depth + 1400, dot_size, sacc_no, 'filled');
bpLFEFStim3_17_15ch01 = scatter3(bpLFEFStim3_17_15ML, bpLFEFStim3_17_15AP, bpLFEFStim3_17_15depth +    0, dot_size, sacc_no, 'filled');


%
% bpLFEFStim3_18_15
%

% variables
bpLFEFStim3_18_15depth = -2100;
bpLFEFStim3_18_15AP = -5;
bpLFEFStim3_18_15ML = -5;

% session depth + coordinates
bpLFEFStim3_18_15top = [bpLFEFStim3_18_15ML, bpLFEFStim3_18_15AP, 0];
bpLFEFStim3_18_15bottom = [bpLFEFStim3_18_15ML, bpLFEFStim3_18_15AP, bpLFEFStim3_18_15depth];
bpLFEFStim3_18_15 = [bpLFEFStim3_18_15top;bpLFEFStim3_18_15bottom];
plot3(bpLFEFStim3_18_15(:,1),bpLFEFStim3_18_15(:,2),bpLFEFStim3_18_15(:,3), 'r')

bpLFEFStim3_18_15ch01 = scatter3(bpLFEFStim3_18_15ML, bpLFEFStim3_18_15AP, bpLFEFStim3_18_15depth +    0, dot_size, sacc_yes, 'filled');

%
% bpLFEFStim3_30_15
%

% variables
bpLFEFStim3_30_15depth = -6000;
bpLFEFStim3_30_15AP = -5;
bpLFEFStim3_30_15ML = -4;

% session depth + coordinates
bpLFEFStim3_30_15top = [bpLFEFStim3_30_15ML, bpLFEFStim3_30_15AP, 0];
bpLFEFStim3_30_15bottom = [bpLFEFStim3_30_15ML, bpLFEFStim3_30_15AP, bpLFEFStim3_30_15depth];
bpLFEFStim3_30_15 = [bpLFEFStim3_30_15top;bpLFEFStim3_30_15bottom];
plot3(bpLFEFStim3_30_15(:,1),bpLFEFStim3_30_15(:,2),bpLFEFStim3_30_15(:,3), 'r')

bpLFEFStim3_30_15ch10 = scatter3(bpLFEFStim3_30_15ML, bpLFEFStim3_30_15AP, bpLFEFStim3_30_15depth + 4500, dot_size, sacc_no, 'filled');
bpLFEFStim3_30_15ch09 = scatter3(bpLFEFStim3_30_15ML, bpLFEFStim3_30_15AP, bpLFEFStim3_30_15depth + 4000, dot_size, sacc_yes, 'filled');
bpLFEFStim3_30_15ch08 = scatter3(bpLFEFStim3_30_15ML, bpLFEFStim3_30_15AP, bpLFEFStim3_30_15depth + 3500, dot_size, sacc_yes, 'filled');
bpLFEFStim3_30_15ch07 = scatter3(bpLFEFStim3_30_15ML, bpLFEFStim3_30_15AP, bpLFEFStim3_30_15depth + 3000, dot_size, sacc_yes, 'filled');
bpLFEFStim3_30_15ch06 = scatter3(bpLFEFStim3_30_15ML, bpLFEFStim3_30_15AP, bpLFEFStim3_30_15depth + 2500, dot_size, sacc_yes, 'filled');
bpLFEFStim3_30_15ch05 = scatter3(bpLFEFStim3_30_15ML, bpLFEFStim3_30_15AP, bpLFEFStim3_30_15depth + 2000, dot_size, sacc_yes, 'filled');
bpLFEFStim3_30_15ch04 = scatter3(bpLFEFStim3_30_15ML, bpLFEFStim3_30_15AP, bpLFEFStim3_30_15depth + 1500, dot_size, sacc_yes, 'filled');
bpLFEFStim3_30_15ch03 = scatter3(bpLFEFStim3_30_15ML, bpLFEFStim3_30_15AP, bpLFEFStim3_30_15depth + 1000, dot_size, sacc_yes, 'filled');
bpLFEFStim3_30_15ch02 = scatter3(bpLFEFStim3_30_15ML, bpLFEFStim3_30_15AP, bpLFEFStim3_30_15depth +  500, dot_size, sacc_yes, 'filled');
bpLFEFStim3_30_15ch01 = scatter3(bpLFEFStim3_30_15ML, bpLFEFStim3_30_15AP, bpLFEFStim3_30_15depth +    0, dot_size, sacc_yes, 'filled');

%
% bpLFEFStim5_13_15
%

% variables
bpLFEFStim5_13_15depth = -6500;
bpLFEFStim5_13_15AP = -4;
bpLFEFStim5_13_15ML = -5;

% session depth + coordinates
bpLFEFStim5_13_15top = [bpLFEFStim5_13_15ML, bpLFEFStim5_13_15AP, 0];
bpLFEFStim5_13_15bottom = [bpLFEFStim5_13_15ML, bpLFEFStim5_13_15AP, bpLFEFStim5_13_15depth];
bpLFEFStim5_13_15 = [bpLFEFStim5_13_15top;bpLFEFStim5_13_15bottom];
plot3(bpLFEFStim5_13_15(:,1),bpLFEFStim5_13_15(:,2),bpLFEFStim5_13_15(:,3), 'r', 'LineWidth', 2)

bpLFEFStim5_13_15ch15 = scatter3(bpLFEFStim5_13_15ML, bpLFEFStim5_13_15AP, bpLFEFStim5_13_15depth + 6500, dot_size, sacc_yes, 'filled');
bpLFEFStim5_13_15ch14 = scatter3(bpLFEFStim5_13_15ML, bpLFEFStim5_13_15AP, bpLFEFStim5_13_15depth + 6200, dot_size, sacc_yes, 'filled');
bpLFEFStim5_13_15ch13 = scatter3(bpLFEFStim5_13_15ML, bpLFEFStim5_13_15AP, bpLFEFStim5_13_15depth + 5900, dot_size, sacc_yes, 'filled');
bpLFEFStim5_13_15ch12 = scatter3(bpLFEFStim5_13_15ML, bpLFEFStim5_13_15AP, bpLFEFStim5_13_15depth + 5500, dot_size, sacc_yes, 'filled');
bpLFEFStim5_13_15ch11 = scatter3(bpLFEFStim5_13_15ML, bpLFEFStim5_13_15AP, bpLFEFStim5_13_15depth + 5000, dot_size, sacc_yes, 'filled');
bpLFEFStim5_13_15ch10 = scatter3(bpLFEFStim5_13_15ML, bpLFEFStim5_13_15AP, bpLFEFStim5_13_15depth + 4500, dot_size, sacc_yes, 'filled');
bpLFEFStim5_13_15ch09 = scatter3(bpLFEFStim5_13_15ML, bpLFEFStim5_13_15AP, bpLFEFStim5_13_15depth + 4000, dot_size, sacc_yes, 'filled');
bpLFEFStim5_13_15ch08 = scatter3(bpLFEFStim5_13_15ML, bpLFEFStim5_13_15AP, bpLFEFStim5_13_15depth + 3500, dot_size, sacc_yes, 'filled');
bpLFEFStim5_13_15ch07 = scatter3(bpLFEFStim5_13_15ML, bpLFEFStim5_13_15AP, bpLFEFStim5_13_15depth + 3000, dot_size, sacc_yes, 'filled');
bpLFEFStim5_13_15ch06 = scatter3(bpLFEFStim5_13_15ML, bpLFEFStim5_13_15AP, bpLFEFStim5_13_15depth + 2500, dot_size, sacc_yes, 'filled');
bpLFEFStim5_13_15ch05 = scatter3(bpLFEFStim5_13_15ML, bpLFEFStim5_13_15AP, bpLFEFStim5_13_15depth + 2000, dot_size, sacc_yes, 'filled');
bpLFEFStim5_13_15ch04 = scatter3(bpLFEFStim5_13_15ML, bpLFEFStim5_13_15AP, bpLFEFStim5_13_15depth + 1500, dot_size, sacc_yes, 'filled');
bpLFEFStim5_13_15ch03 = scatter3(bpLFEFStim5_13_15ML, bpLFEFStim5_13_15AP, bpLFEFStim5_13_15depth + 1000, dot_size, sacc_yes, 'filled');
bpLFEFStim5_13_15ch02 = scatter3(bpLFEFStim5_13_15ML, bpLFEFStim5_13_15AP, bpLFEFStim5_13_15depth +  500, dot_size, sacc_yes, 'filled');
bpLFEFStim5_13_15ch01 = scatter3(bpLFEFStim5_13_15ML, bpLFEFStim5_13_15AP, bpLFEFStim5_13_15depth +    0, dot_size, sacc_yes, 'filled');


%
% bpLFEFStim5_13_15n02
%

% variables
bpLFEFStim5_13_15n02depth = -8500;
bpLFEFStim5_13_15n02AP = -3;
bpLFEFStim5_13_15n02ML = -7;

% session depth + coordinates
bpLFEFStim5_13_15n02top = [bpLFEFStim5_13_15n02ML, bpLFEFStim5_13_15n02AP, 0];
bpLFEFStim5_13_15n02bottom = [bpLFEFStim5_13_15n02ML, bpLFEFStim5_13_15n02AP, bpLFEFStim5_13_15n02depth];
bpLFEFStim5_13_15n02 = [bpLFEFStim5_13_15n02top;bpLFEFStim5_13_15n02bottom];
plot3(bpLFEFStim5_13_15n02(:,1),bpLFEFStim5_13_15n02(:,2),bpLFEFStim5_13_15n02(:,3), 'r', 'LineWidth', 2)

bpLFEFStim5_13_15n02ch08 = scatter3(bpLFEFStim5_13_15n02ML, bpLFEFStim5_13_15n02AP, bpLFEFStim5_13_15n02depth + 3500, dot_size, sacc_yes, 'filled');
bpLFEFStim5_13_15n02ch07 = scatter3(bpLFEFStim5_13_15n02ML, bpLFEFStim5_13_15n02AP, bpLFEFStim5_13_15n02depth + 3000, dot_size, sacc_yes, 'filled');
bpLFEFStim5_13_15n02ch06 = scatter3(bpLFEFStim5_13_15n02ML, bpLFEFStim5_13_15n02AP, bpLFEFStim5_13_15n02depth + 2500, dot_size, sacc_yes, 'filled');
bpLFEFStim5_13_15n02ch05 = scatter3(bpLFEFStim5_13_15n02ML, bpLFEFStim5_13_15n02AP, bpLFEFStim5_13_15n02depth + 2000, dot_size, sacc_yes, 'filled');
bpLFEFStim5_13_15n02ch04 = scatter3(bpLFEFStim5_13_15n02ML, bpLFEFStim5_13_15n02AP, bpLFEFStim5_13_15n02depth + 1500, dot_size, sacc_yes, 'filled');
bpLFEFStim5_13_15n02ch03 = scatter3(bpLFEFStim5_13_15n02ML, bpLFEFStim5_13_15n02AP, bpLFEFStim5_13_15n02depth + 1000, dot_size, sacc_yes, 'filled');
bpLFEFStim5_13_15n02ch02 = scatter3(bpLFEFStim5_13_15n02ML, bpLFEFStim5_13_15n02AP, bpLFEFStim5_13_15n02depth +  500, dot_size, sacc_yes, 'filled');
bpLFEFStim5_13_15n02ch01 = scatter3(bpLFEFStim5_13_15n02ML, bpLFEFStim5_13_15n02AP, bpLFEFStim5_13_15n02depth +    0, dot_size, sacc_no, 'filled');


% plot chamber cylinder
[x1,y1,z1]=cylinder(9.5,50);
[x2,y2,z2]=cylinder(9.5,50);

z1=z1 + 0;
z2= z2 - 10000;
s1=surf(x1,y1,z1, 'LineWidth', 5);
s2=surf(x2,y2,z2, 'LineWidth', 5);

% setup plot dimensions/variables
grid on;
set(gca,'LineWidth',3)
box on;
axis([-10, 10, -10, 10, -10000, 1000])
title('Br LFEF Stimulation Penetrations', 'fontsize', 24);

ax = gca; % current axes
ax.FontSize = 16;
ax.XTick = -10:1:10;
ax.YTick = -10:1:10;
ax.ZTick = -10000:500:1000;

xlabel('Lateral - Medial (mm)', 'fontsize', 24);
xticklabels = {'L10', 'L9', 'L8', 'L7', 'L6', 'L5', 'L4', 'L3',...
    'L2', 'L1', 'ML0', 'M1', 'M2', 'M3', 'M4', 'M5',...
    'M6', 'M7', 'M8', 'M9', 'M10'};
set(gca, 'XTick', xticks, 'XTickLabel', xticklabels(:))

ylabel('Anterior - Posterior (mm)', 'fontsize', 24);
yticklabels = {'P10', 'P9', 'P8', 'P7', 'P6', 'P5', 'P4', 'P3',...
    'P2', 'P1', 'AP0', 'A1', 'A2', 'A3', 'A4', 'A5',...
    'A6', 'A7', 'A8', 'A9', 'A10'};
set(gca, 'YTick', yticks, 'YTickLabel', yticklabels(:))

zlabel('Penetration Depth (?m)', 'fontsize', 24);

set(gcf, 'units', 'norm', 'position', [0 0 .5 .9])