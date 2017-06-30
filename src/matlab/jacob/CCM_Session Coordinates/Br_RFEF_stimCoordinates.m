% setup variables
dot_size = 100;
sacc_yes = 'r';
sacc_no = 'k';

hold on;

%
% bpRFEFStim2_10_15
%

% variables
bpRFEFStim2_10_15depth = -5000;
bpRFEFStim2_10_15AP = -5;
bpRFEFStim2_10_15ML = 1;

% session depth + coordinates
bpRFEFStim2_10_15top = [bpRFEFStim2_10_15ML, bpRFEFStim2_10_15AP, 0];
bpRFEFStim2_10_15bottom = [bpRFEFStim2_10_15ML, bpRFEFStim2_10_15AP, bpRFEFStim2_10_15depth];
bpRFEFStim2_10_15 = [bpRFEFStim2_10_15top;bpRFEFStim2_10_15bottom];
plot3(bpRFEFStim2_10_15(:,1),bpRFEFStim2_10_15(:,2),bpRFEFStim2_10_15(:,3), 'w')


bpRFEFStim2_10_15ch17 = scatter3(bpRFEFStim2_10_15ML, bpRFEFStim2_10_15AP, bpRFEFStim2_10_15depth + 5000, dot_size, sacc_no, 'filled');
bpRFEFStim2_10_15ch16 = scatter3(bpRFEFStim2_10_15ML, bpRFEFStim2_10_15AP, bpRFEFStim2_10_15depth + 4600, dot_size, sacc_no, 'filled');
bpRFEFStim2_10_15ch15 = scatter3(bpRFEFStim2_10_15ML, bpRFEFStim2_10_15AP, bpRFEFStim2_10_15depth + 4200, dot_size, sacc_no, 'filled');
bpRFEFStim2_10_15ch14 = scatter3(bpRFEFStim2_10_15ML, bpRFEFStim2_10_15AP, bpRFEFStim2_10_15depth + 3800, dot_size, sacc_no, 'filled');
bpRFEFStim2_10_15ch13 = scatter3(bpRFEFStim2_10_15ML, bpRFEFStim2_10_15AP, bpRFEFStim2_10_15depth + 3500, dot_size, sacc_no, 'filled');
bpRFEFStim2_10_15ch12 = scatter3(bpRFEFStim2_10_15ML, bpRFEFStim2_10_15AP, bpRFEFStim2_10_15depth + 3200, dot_size, sacc_no, 'filled');
bpRFEFStim2_10_15ch11 = scatter3(bpRFEFStim2_10_15ML, bpRFEFStim2_10_15AP, bpRFEFStim2_10_15depth + 2900, dot_size, sacc_no, 'filled');
bpRFEFStim2_10_15ch10 = scatter3(bpRFEFStim2_10_15ML, bpRFEFStim2_10_15AP, bpRFEFStim2_10_15depth + 2700, dot_size, sacc_no, 'filled');
bpRFEFStim2_10_15ch09 = scatter3(bpRFEFStim2_10_15ML, bpRFEFStim2_10_15AP, bpRFEFStim2_10_15depth + 2400, dot_size, sacc_no, 'filled');
bpRFEFStim2_10_15ch08 = scatter3(bpRFEFStim2_10_15ML, bpRFEFStim2_10_15AP, bpRFEFStim2_10_15depth + 2100, dot_size, sacc_no, 'filled');
bpRFEFStim2_10_15ch07 = scatter3(bpRFEFStim2_10_15ML, bpRFEFStim2_10_15AP, bpRFEFStim2_10_15depth + 1900, dot_size, sacc_no, 'filled');
bpRFEFStim2_10_15ch06 = scatter3(bpRFEFStim2_10_15ML, bpRFEFStim2_10_15AP, bpRFEFStim2_10_15depth + 1700, dot_size, sacc_no, 'filled');
bpRFEFStim2_10_15ch05 = scatter3(bpRFEFStim2_10_15ML, bpRFEFStim2_10_15AP, bpRFEFStim2_10_15depth + 1400, dot_size, sacc_no, 'filled');
bpRFEFStim2_10_15ch04 = scatter3(bpRFEFStim2_10_15ML, bpRFEFStim2_10_15AP, bpRFEFStim2_10_15depth + 1000, dot_size, sacc_yes, 'filled');
bpRFEFStim2_10_15ch03 = scatter3(bpRFEFStim2_10_15ML, bpRFEFStim2_10_15AP, bpRFEFStim2_10_15depth +  700, dot_size, sacc_no, 'filled');
bpRFEFStim2_10_15ch02 = scatter3(bpRFEFStim2_10_15ML, bpRFEFStim2_10_15AP, bpRFEFStim2_10_15depth +  400, dot_size, sacc_no, 'filled');
bpRFEFStim2_10_15ch01 = scatter3(bpRFEFStim2_10_15ML, bpRFEFStim2_10_15AP, bpRFEFStim2_10_15depth +    0, dot_size, sacc_no, 'filled');


%
% bpRFEFStim2_10_15n02
%

% variables
bpRFEFStim2_10_15n02depth = -6100;
bpRFEFStim2_10_15n02AP = -6;
bpRFEFStim2_10_15n02ML = 0;

% session depth + coordinates
bpRFEFStim2_10_15n02top = [bpRFEFStim2_10_15n02ML, bpRFEFStim2_10_15n02AP, 0];
bpRFEFStim2_10_15n02bottom = [bpRFEFStim2_10_15n02ML, bpRFEFStim2_10_15n02AP, bpRFEFStim2_10_15n02depth];
bpRFEFStim2_10_15n02 = [bpRFEFStim2_10_15n02top;bpRFEFStim2_10_15n02bottom];
plot3(bpRFEFStim2_10_15n02(:,1),bpRFEFStim2_10_15n02(:,2),bpRFEFStim2_10_15n02(:,3), 'w')


bpRFEFStim2_10_15n02ch12 = scatter3(bpRFEFStim2_10_15n02ML, bpRFEFStim2_10_15n02AP, bpRFEFStim2_10_15n02depth + 4600, dot_size, sacc_no, 'filled');
bpRFEFStim2_10_15n02ch11 = scatter3(bpRFEFStim2_10_15n02ML, bpRFEFStim2_10_15n02AP, bpRFEFStim2_10_15n02depth + 4200, dot_size, sacc_no, 'filled');
bpRFEFStim2_10_15n02ch10 = scatter3(bpRFEFStim2_10_15n02ML, bpRFEFStim2_10_15n02AP, bpRFEFStim2_10_15n02depth + 3800, dot_size, sacc_no, 'filled');
bpRFEFStim2_10_15n02ch09 = scatter3(bpRFEFStim2_10_15n02ML, bpRFEFStim2_10_15n02AP, bpRFEFStim2_10_15n02depth + 3400, dot_size, sacc_yes, 'filled');
bpRFEFStim2_10_15n02ch08 = scatter3(bpRFEFStim2_10_15n02ML, bpRFEFStim2_10_15n02AP, bpRFEFStim2_10_15n02depth + 3200, dot_size, sacc_yes, 'filled');
bpRFEFStim2_10_15n02ch07 = scatter3(bpRFEFStim2_10_15n02ML, bpRFEFStim2_10_15n02AP, bpRFEFStim2_10_15n02depth + 2900, dot_size, sacc_yes, 'filled');
bpRFEFStim2_10_15n02ch06 = scatter3(bpRFEFStim2_10_15n02ML, bpRFEFStim2_10_15n02AP, bpRFEFStim2_10_15n02depth + 2600, dot_size, sacc_yes, 'filled');
bpRFEFStim2_10_15n02ch05 = scatter3(bpRFEFStim2_10_15n02ML, bpRFEFStim2_10_15n02AP, bpRFEFStim2_10_15n02depth + 2300, dot_size, sacc_yes, 'filled');
bpRFEFStim2_10_15n02ch04 = scatter3(bpRFEFStim2_10_15n02ML, bpRFEFStim2_10_15n02AP, bpRFEFStim2_10_15n02depth + 1800, dot_size, sacc_yes, 'filled');
bpRFEFStim2_10_15n02ch03 = scatter3(bpRFEFStim2_10_15n02ML, bpRFEFStim2_10_15n02AP, bpRFEFStim2_10_15n02depth + 1000, dot_size, sacc_yes, 'filled');
bpRFEFStim2_10_15n02ch02 = scatter3(bpRFEFStim2_10_15n02ML, bpRFEFStim2_10_15n02AP, bpRFEFStim2_10_15n02depth +  600, dot_size, sacc_yes, 'filled');
bpRFEFStim2_10_15n02ch01 = scatter3(bpRFEFStim2_10_15n02ML, bpRFEFStim2_10_15n02AP, bpRFEFStim2_10_15n02depth +    0, dot_size, sacc_yes, 'filled');


%
% bpRFEFStim2_10_15n03
%

% variables
bpRFEFStim2_10_15n03depth = -3500;
bpRFEFStim2_10_15n03AP = -7;
bpRFEFStim2_10_15n03ML = 1;

% session depth + coordinates
bpRFEFStim2_10_15n03top = [bpRFEFStim2_10_15n03ML, bpRFEFStim2_10_15n03AP, 0];
bpRFEFStim2_10_15n03bottom = [bpRFEFStim2_10_15n03ML, bpRFEFStim2_10_15n03AP, bpRFEFStim2_10_15n03depth];
bpRFEFStim2_10_15n03 = [bpRFEFStim2_10_15n03top;bpRFEFStim2_10_15n03bottom];
plot3(bpRFEFStim2_10_15n03(:,1),bpRFEFStim2_10_15n03(:,2),bpRFEFStim2_10_15n03(:,3), 'w')

bpRFEFStim2_10_15n03ch03 = scatter3(bpRFEFStim2_10_15n03ML, bpRFEFStim2_10_15n03AP, bpRFEFStim2_10_15n03depth + 2000, dot_size, sacc_no, 'filled');
bpRFEFStim2_10_15n03ch02 = scatter3(bpRFEFStim2_10_15n03ML, bpRFEFStim2_10_15n03AP, bpRFEFStim2_10_15n03depth + 1300, dot_size, sacc_no, 'filled');
bpRFEFStim2_10_15n03ch01 = scatter3(bpRFEFStim2_10_15n03ML, bpRFEFStim2_10_15n03AP, bpRFEFStim2_10_15n03depth +    0, dot_size, sacc_no, 'filled');

%
% bpRFEFStim2_23_15
%

% variables
bpRFEFStim2_23_15depth = -4500;
bpRFEFStim2_23_15AP = -4.5;
bpRFEFStim2_23_15ML = 2.5;

% session depth + coordinates
bpRFEFStim2_23_15top = [bpRFEFStim2_23_15ML, bpRFEFStim2_23_15AP, 0];
bpRFEFStim2_23_15bottom = [bpRFEFStim2_23_15ML, bpRFEFStim2_23_15AP, bpRFEFStim2_23_15depth];
bpRFEFStim2_23_15 = [bpRFEFStim2_23_15top;bpRFEFStim2_23_15bottom];
plot3(bpRFEFStim2_23_15(:,1),bpRFEFStim2_23_15(:,2),bpRFEFStim2_23_15(:,3), 'w')


bpRFEFStim2_23_15ch07 = scatter3(bpRFEFStim2_23_15ML, bpRFEFStim2_23_15AP, bpRFEFStim2_23_15depth + 4500, dot_size, sacc_no, 'filled');
bpRFEFStim2_23_15ch06 = scatter3(bpRFEFStim2_23_15ML, bpRFEFStim2_23_15AP, bpRFEFStim2_23_15depth + 3700, dot_size, sacc_no, 'filled');
bpRFEFStim2_23_15ch05 = scatter3(bpRFEFStim2_23_15ML, bpRFEFStim2_23_15AP, bpRFEFStim2_23_15depth + 3000, dot_size, sacc_yes, 'filled');
bpRFEFStim2_23_15ch04 = scatter3(bpRFEFStim2_23_15ML, bpRFEFStim2_23_15AP, bpRFEFStim2_23_15depth + 2300, dot_size, sacc_yes, 'filled');
bpRFEFStim2_23_15ch03 = scatter3(bpRFEFStim2_23_15ML, bpRFEFStim2_23_15AP, bpRFEFStim2_23_15depth + 1500, dot_size, sacc_yes, 'filled');
bpRFEFStim2_23_15ch02 = scatter3(bpRFEFStim2_23_15ML, bpRFEFStim2_23_15AP, bpRFEFStim2_23_15depth +  500, dot_size, sacc_yes, 'filled');
bpRFEFStim2_23_15ch01 = scatter3(bpRFEFStim2_23_15ML, bpRFEFStim2_23_15AP, bpRFEFStim2_23_15depth +    0, dot_size, sacc_no, 'filled');

%
% bpRFEFStim2_24_15
%

% variables
bpRFEFStim2_24_15depth = -3500;
bpRFEFStim2_24_15AP = -2.5;
bpRFEFStim2_24_15ML = 4;

% session depth + coordinates
bpRFEFStim2_24_15top = [bpRFEFStim2_24_15ML, bpRFEFStim2_24_15AP, 0];
bpRFEFStim2_24_15bottom = [bpRFEFStim2_24_15ML, bpRFEFStim2_24_15AP, bpRFEFStim2_24_15depth];
bpRFEFStim2_24_15 = [bpRFEFStim2_24_15top;bpRFEFStim2_24_15bottom];
plot3(bpRFEFStim2_24_15(:,1),bpRFEFStim2_24_15(:,2),bpRFEFStim2_24_15(:,3), 'w')

bpRFEFStim2_24_15ch07 = scatter3(bpRFEFStim2_24_15ML, bpRFEFStim2_24_15AP, bpRFEFStim2_24_15depth + 3000, dot_size, sacc_no, 'filled');
bpRFEFStim2_24_15ch06 = scatter3(bpRFEFStim2_24_15ML, bpRFEFStim2_24_15AP, bpRFEFStim2_24_15depth + 2500, dot_size, sacc_no, 'filled');
bpRFEFStim2_24_15ch05 = scatter3(bpRFEFStim2_24_15ML, bpRFEFStim2_24_15AP, bpRFEFStim2_24_15depth + 2000, dot_size, sacc_no, 'filled');
bpRFEFStim2_24_15ch04 = scatter3(bpRFEFStim2_24_15ML, bpRFEFStim2_24_15AP, bpRFEFStim2_24_15depth + 1500, dot_size, sacc_no, 'filled');
bpRFEFStim2_24_15ch03 = scatter3(bpRFEFStim2_24_15ML, bpRFEFStim2_24_15AP, bpRFEFStim2_24_15depth + 1000, dot_size, sacc_no, 'filled');
bpRFEFStim2_24_15ch02 = scatter3(bpRFEFStim2_24_15ML, bpRFEFStim2_24_15AP, bpRFEFStim2_24_15depth +  500, dot_size, sacc_no, 'filled');
bpRFEFStim2_24_15ch01 = scatter3(bpRFEFStim2_24_15ML, bpRFEFStim2_24_15AP, bpRFEFStim2_24_15depth +    0, dot_size, sacc_no, 'filled');

%
% bpRFEFStim2_24_15n02
%

% variables
bpRFEFStim2_24_15n02depth = -5300;
bpRFEFStim2_24_15n02AP = -2.5;
bpRFEFStim2_24_15n02ML = 1;

% session depth + coordinates
bpRFEFStim2_24_15n02top = [bpRFEFStim2_24_15n02ML, bpRFEFStim2_24_15n02AP, 0];
bpRFEFStim2_24_15n02bottom = [bpRFEFStim2_24_15n02ML, bpRFEFStim2_24_15n02AP, bpRFEFStim2_24_15n02depth];
bpRFEFStim2_24_15n02 = [bpRFEFStim2_24_15n02top;bpRFEFStim2_24_15n02bottom];
plot3(bpRFEFStim2_24_15n02(:,1),bpRFEFStim2_24_15n02(:,2),bpRFEFStim2_24_15n02(:,3), 'w')

bpRFEFStim2_24_15n02ch10 = scatter3(bpRFEFStim2_24_15n02ML, bpRFEFStim2_24_15n02AP, bpRFEFStim2_24_15n02depth + 5000, dot_size, sacc_no, 'filled');
bpRFEFStim2_24_15n02ch09 = scatter3(bpRFEFStim2_24_15n02ML, bpRFEFStim2_24_15n02AP, bpRFEFStim2_24_15n02depth + 4500, dot_size, sacc_no, 'filled');
bpRFEFStim2_24_15n02ch08 = scatter3(bpRFEFStim2_24_15n02ML, bpRFEFStim2_24_15n02AP, bpRFEFStim2_24_15n02depth + 4000, dot_size, sacc_no, 'filled');
bpRFEFStim2_24_15n02ch07 = scatter3(bpRFEFStim2_24_15n02ML, bpRFEFStim2_24_15n02AP, bpRFEFStim2_24_15n02depth + 3000, dot_size, sacc_no, 'filled');
bpRFEFStim2_24_15n02ch06 = scatter3(bpRFEFStim2_24_15n02ML, bpRFEFStim2_24_15n02AP, bpRFEFStim2_24_15n02depth + 2500, dot_size, sacc_no, 'filled');
bpRFEFStim2_24_15n02ch05 = scatter3(bpRFEFStim2_24_15n02ML, bpRFEFStim2_24_15n02AP, bpRFEFStim2_24_15n02depth + 2000, dot_size, sacc_no, 'filled');
bpRFEFStim2_24_15n02ch04 = scatter3(bpRFEFStim2_24_15n02ML, bpRFEFStim2_24_15n02AP, bpRFEFStim2_24_15n02depth + 1500, dot_size, sacc_no, 'filled');
bpRFEFStim2_24_15n02ch03 = scatter3(bpRFEFStim2_24_15n02ML, bpRFEFStim2_24_15n02AP, bpRFEFStim2_24_15n02depth + 1000, dot_size, sacc_no, 'filled');
bpRFEFStim2_24_15n02ch02 = scatter3(bpRFEFStim2_24_15n02ML, bpRFEFStim2_24_15n02AP, bpRFEFStim2_24_15n02depth +  500, dot_size, sacc_no, 'filled');
bpRFEFStim2_24_15n02ch01 = scatter3(bpRFEFStim2_24_15n02ML, bpRFEFStim2_24_15n02AP, bpRFEFStim2_24_15n02depth +    0, dot_size, sacc_no, 'filled');

%
% bpRFEFStim2_27_15
%

% variables
bpRFEFStim2_27_15depth = -1700;
bpRFEFStim2_27_15AP = -4;
bpRFEFStim2_27_15ML = 1.5;

% session depth + coordinates
bpRFEFStim2_27_15top = [bpRFEFStim2_27_15ML, bpRFEFStim2_27_15AP, 0];
bpRFEFStim2_27_15bottom = [bpRFEFStim2_27_15ML, bpRFEFStim2_27_15AP, bpRFEFStim2_27_15depth];
bpRFEFStim2_27_15 = [bpRFEFStim2_27_15top;bpRFEFStim2_27_15bottom];
plot3(bpRFEFStim2_27_15(:,1),bpRFEFStim2_27_15(:,2),bpRFEFStim2_27_15(:,3), 'w')

bpRFEFStim2_27_15ch03 = scatter3(bpRFEFStim2_27_15ML, bpRFEFStim2_27_15AP, bpRFEFStim2_27_15depth + 1000, dot_size, sacc_no, 'filled');
bpRFEFStim2_27_15ch02 = scatter3(bpRFEFStim2_27_15ML, bpRFEFStim2_27_15AP, bpRFEFStim2_27_15depth +  500, dot_size, sacc_no, 'filled');
bpRFEFStim2_27_15ch01 = scatter3(bpRFEFStim2_27_15ML, bpRFEFStim2_27_15AP, bpRFEFStim2_27_15depth +    0, dot_size, sacc_no, 'filled');


%
% bpRFEFStim4_07_15
%

% variables
bpRFEFStim4_07_15depth = -5348;
bpRFEFStim4_07_15AP = -6;
bpRFEFStim4_07_15ML = 1;

% session depth + coordinates
bpRFEFStim4_07_15top = [bpRFEFStim4_07_15ML, bpRFEFStim4_07_15AP, 0];
bpRFEFStim4_07_15bottom = [bpRFEFStim4_07_15ML, bpRFEFStim4_07_15AP, bpRFEFStim4_07_15depth];
bpRFEFStim4_07_15 = [bpRFEFStim4_07_15top;bpRFEFStim4_07_15bottom];
plot3(bpRFEFStim4_07_15(:,1),bpRFEFStim4_07_15(:,2),bpRFEFStim4_07_15(:,3), 'w')

bpRFEFStim4_07_15ch06 = scatter3(bpRFEFStim4_07_15ML, bpRFEFStim4_07_15AP, bpRFEFStim4_07_15depth + 5000, dot_size, sacc_no, 'filled');
bpRFEFStim4_07_15ch05 = scatter3(bpRFEFStim4_07_15ML, bpRFEFStim4_07_15AP, bpRFEFStim4_07_15depth + 4000, dot_size, sacc_no, 'filled');
bpRFEFStim4_07_15ch04 = scatter3(bpRFEFStim4_07_15ML, bpRFEFStim4_07_15AP, bpRFEFStim4_07_15depth + 3000, dot_size, sacc_no, 'filled');
bpRFEFStim4_07_15ch03 = scatter3(bpRFEFStim4_07_15ML, bpRFEFStim4_07_15AP, bpRFEFStim4_07_15depth + 2000, dot_size, sacc_no, 'filled');
bpRFEFStim4_07_15ch02 = scatter3(bpRFEFStim4_07_15ML, bpRFEFStim4_07_15AP, bpRFEFStim4_07_15depth + 1000, dot_size, sacc_no, 'filled');
bpRFEFStim4_07_15ch01 = scatter3(bpRFEFStim4_07_15ML, bpRFEFStim4_07_15AP, bpRFEFStim4_07_15depth +    0, dot_size, sacc_no, 'filled');


%
% bpRFEFStim4_09_15
%

% variables
bpRFEFStim4_09_15depth = -5600;
bpRFEFStim4_09_15AP = -6;
bpRFEFStim4_09_15ML = -1;

% session depth + coordinates
bpRFEFStim4_09_15top = [bpRFEFStim4_09_15ML, bpRFEFStim4_09_15AP, 0];
bpRFEFStim4_09_15bottom = [bpRFEFStim4_09_15ML, bpRFEFStim4_09_15AP, bpRFEFStim4_09_15depth];
bpRFEFStim4_09_15 = [bpRFEFStim4_09_15top;bpRFEFStim4_09_15bottom];
plot3(bpRFEFStim4_09_15(:,1),bpRFEFStim4_09_15(:,2),bpRFEFStim4_09_15(:,3), 'w')


bpRFEFStim4_09_15ch09 = scatter3(bpRFEFStim4_09_15ML, bpRFEFStim4_09_15AP, bpRFEFStim4_09_15depth + 4900, dot_size, sacc_no, 'filled');
bpRFEFStim4_09_15ch08 = scatter3(bpRFEFStim4_09_15ML, bpRFEFStim4_09_15AP, bpRFEFStim4_09_15depth + 4200, dot_size, sacc_yes, 'filled');
bpRFEFStim4_09_15ch07 = scatter3(bpRFEFStim4_09_15ML, bpRFEFStim4_09_15AP, bpRFEFStim4_09_15depth + 3600, dot_size, sacc_yes, 'filled');
bpRFEFStim4_09_15ch06 = scatter3(bpRFEFStim4_09_15ML, bpRFEFStim4_09_15AP, bpRFEFStim4_09_15depth + 1900, dot_size, sacc_no, 'filled');
bpRFEFStim4_09_15ch05 = scatter3(bpRFEFStim4_09_15ML, bpRFEFStim4_09_15AP, bpRFEFStim4_09_15depth + 1600, dot_size, sacc_no, 'filled');
bpRFEFStim4_09_15ch04 = scatter3(bpRFEFStim4_09_15ML, bpRFEFStim4_09_15AP, bpRFEFStim4_09_15depth + 1200, dot_size, sacc_no, 'filled');
bpRFEFStim4_09_15ch03 = scatter3(bpRFEFStim4_09_15ML, bpRFEFStim4_09_15AP, bpRFEFStim4_09_15depth +  800, dot_size, sacc_yes, 'filled');
bpRFEFStim4_09_15ch02 = scatter3(bpRFEFStim4_09_15ML, bpRFEFStim4_09_15AP, bpRFEFStim4_09_15depth +  300, dot_size, sacc_no, 'filled');
bpRFEFStim4_09_15ch01 = scatter3(bpRFEFStim4_09_15ML, bpRFEFStim4_09_15AP, bpRFEFStim4_09_15depth +    0, dot_size, sacc_no, 'filled');

%
% bpRFEFStim4_10_15
%

% variables
bpRFEFStim4_10_15depth = -7085;
bpRFEFStim4_10_15AP = -4;
bpRFEFStim4_10_15ML = -1;

% session depth + coordinates
bpRFEFStim4_10_15top = [bpRFEFStim4_10_15ML, bpRFEFStim4_10_15AP, 0];
bpRFEFStim4_10_15bottom = [bpRFEFStim4_10_15ML, bpRFEFStim4_10_15AP, bpRFEFStim4_10_15depth];
bpRFEFStim4_10_15 = [bpRFEFStim4_10_15top;bpRFEFStim4_10_15bottom];
plot3(bpRFEFStim4_10_15(:,1),bpRFEFStim4_10_15(:,2),bpRFEFStim4_10_15(:,3), 'w')

bpRFEFStim4_10_15ch10 = scatter3(bpRFEFStim4_10_15ML, bpRFEFStim4_10_15AP, bpRFEFStim4_10_15depth + 4500, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15ch09 = scatter3(bpRFEFStim4_10_15ML, bpRFEFStim4_10_15AP, bpRFEFStim4_10_15depth + 4000, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15ch08 = scatter3(bpRFEFStim4_10_15ML, bpRFEFStim4_10_15AP, bpRFEFStim4_10_15depth + 3500, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15ch07 = scatter3(bpRFEFStim4_10_15ML, bpRFEFStim4_10_15AP, bpRFEFStim4_10_15depth + 3000, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15ch06 = scatter3(bpRFEFStim4_10_15ML, bpRFEFStim4_10_15AP, bpRFEFStim4_10_15depth + 2500, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15ch05 = scatter3(bpRFEFStim4_10_15ML, bpRFEFStim4_10_15AP, bpRFEFStim4_10_15depth + 2000, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15ch04 = scatter3(bpRFEFStim4_10_15ML, bpRFEFStim4_10_15AP, bpRFEFStim4_10_15depth + 1500, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15ch03 = scatter3(bpRFEFStim4_10_15ML, bpRFEFStim4_10_15AP, bpRFEFStim4_10_15depth + 1000, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15ch02 = scatter3(bpRFEFStim4_10_15ML, bpRFEFStim4_10_15AP, bpRFEFStim4_10_15depth +  500, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15ch01 = scatter3(bpRFEFStim4_10_15ML, bpRFEFStim4_10_15AP, bpRFEFStim4_10_15depth +    0, dot_size, sacc_no, 'filled');


%
% bpRFEFStim4_10_15n02
%

% variables
bpRFEFStim4_10_15n02depth = -8834;
bpRFEFStim4_10_15n02AP = -8;
bpRFEFStim4_10_15n02ML = 1;

% session depth + coordinates
bpRFEFStim4_10_15n02top = [bpRFEFStim4_10_15n02ML, bpRFEFStim4_10_15n02AP, 0];
bpRFEFStim4_10_15n02bottom = [bpRFEFStim4_10_15n02ML, bpRFEFStim4_10_15n02AP, bpRFEFStim4_10_15n02depth];
bpRFEFStim4_10_15n02 = [bpRFEFStim4_10_15n02top;bpRFEFStim4_10_15n02bottom];
plot3(bpRFEFStim4_10_15n02(:,1),bpRFEFStim4_10_15n02(:,2),bpRFEFStim4_10_15n02(:,3), 'w')

bpRFEFStim4_10_15n02ch13 = scatter3(bpRFEFStim4_10_15n02ML, bpRFEFStim4_10_15n02AP, bpRFEFStim4_10_15n02depth + 8000, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15n02ch12 = scatter3(bpRFEFStim4_10_15n02ML, bpRFEFStim4_10_15n02AP, bpRFEFStim4_10_15n02depth + 7000, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15n02ch11 = scatter3(bpRFEFStim4_10_15n02ML, bpRFEFStim4_10_15n02AP, bpRFEFStim4_10_15n02depth + 6000, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15n02ch10 = scatter3(bpRFEFStim4_10_15n02ML, bpRFEFStim4_10_15n02AP, bpRFEFStim4_10_15n02depth + 5500, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15n02ch09 = scatter3(bpRFEFStim4_10_15n02ML, bpRFEFStim4_10_15n02AP, bpRFEFStim4_10_15n02depth + 5000, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15n02ch08 = scatter3(bpRFEFStim4_10_15n02ML, bpRFEFStim4_10_15n02AP, bpRFEFStim4_10_15n02depth + 4500, dot_size, sacc_yes, 'filled');
bpRFEFStim4_10_15n02ch07 = scatter3(bpRFEFStim4_10_15n02ML, bpRFEFStim4_10_15n02AP, bpRFEFStim4_10_15n02depth + 4000, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15n02ch06 = scatter3(bpRFEFStim4_10_15n02ML, bpRFEFStim4_10_15n02AP, bpRFEFStim4_10_15n02depth + 3500, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15n02ch05 = scatter3(bpRFEFStim4_10_15n02ML, bpRFEFStim4_10_15n02AP, bpRFEFStim4_10_15n02depth + 3000, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15n02ch04 = scatter3(bpRFEFStim4_10_15n02ML, bpRFEFStim4_10_15n02AP, bpRFEFStim4_10_15n02depth + 2500, dot_size, sacc_yes, 'filled');
bpRFEFStim4_10_15n02ch03 = scatter3(bpRFEFStim4_10_15n02ML, bpRFEFStim4_10_15n02AP, bpRFEFStim4_10_15n02depth + 1500, dot_size, sacc_yes, 'filled');
bpRFEFStim4_10_15n02ch02 = scatter3(bpRFEFStim4_10_15n02ML, bpRFEFStim4_10_15n02AP, bpRFEFStim4_10_15n02depth + 1000, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15n02ch01 = scatter3(bpRFEFStim4_10_15n02ML, bpRFEFStim4_10_15n02AP, bpRFEFStim4_10_15n02depth +    0, dot_size, sacc_no, 'filled');


%
% bpRFEFStim4_10_15n03
%

% variables
bpRFEFStim4_10_15n03depth = -7100;
bpRFEFStim4_10_15n03AP = -5;
bpRFEFStim4_10_15n03ML = 4.5;

% session depth + coordinates
bpRFEFStim4_10_15n03top = [bpRFEFStim4_10_15n03ML, bpRFEFStim4_10_15n03AP, 0];
bpRFEFStim4_10_15n03bottom = [bpRFEFStim4_10_15n03ML, bpRFEFStim4_10_15n03AP, bpRFEFStim4_10_15n03depth];
bpRFEFStim4_10_15n03 = [bpRFEFStim4_10_15n03top;bpRFEFStim4_10_15n03bottom];
plot3(bpRFEFStim4_10_15n03(:,1),bpRFEFStim4_10_15n03(:,2),bpRFEFStim4_10_15n03(:,3), 'w')


bpRFEFStim4_10_15n03ch14 = scatter3(bpRFEFStim4_10_15n03ML, bpRFEFStim4_10_15n03AP, bpRFEFStim4_10_15n03depth + 7000, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15n03ch13 = scatter3(bpRFEFStim4_10_15n03ML, bpRFEFStim4_10_15n03AP, bpRFEFStim4_10_15n03depth + 6000, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15n03ch12 = scatter3(bpRFEFStim4_10_15n03ML, bpRFEFStim4_10_15n03AP, bpRFEFStim4_10_15n03depth + 5500, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15n03ch11 = scatter3(bpRFEFStim4_10_15n03ML, bpRFEFStim4_10_15n03AP, bpRFEFStim4_10_15n03depth + 5000, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15n03ch10 = scatter3(bpRFEFStim4_10_15n03ML, bpRFEFStim4_10_15n03AP, bpRFEFStim4_10_15n03depth + 4500, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15n03ch09 = scatter3(bpRFEFStim4_10_15n03ML, bpRFEFStim4_10_15n03AP, bpRFEFStim4_10_15n03depth + 4000, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15n03ch08 = scatter3(bpRFEFStim4_10_15n03ML, bpRFEFStim4_10_15n03AP, bpRFEFStim4_10_15n03depth + 3500, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15n03ch07 = scatter3(bpRFEFStim4_10_15n03ML, bpRFEFStim4_10_15n03AP, bpRFEFStim4_10_15n03depth + 3000, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15n03ch06 = scatter3(bpRFEFStim4_10_15n03ML, bpRFEFStim4_10_15n03AP, bpRFEFStim4_10_15n03depth + 2500, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15n03ch05 = scatter3(bpRFEFStim4_10_15n03ML, bpRFEFStim4_10_15n03AP, bpRFEFStim4_10_15n03depth + 2000, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15n03ch04 = scatter3(bpRFEFStim4_10_15n03ML, bpRFEFStim4_10_15n03AP, bpRFEFStim4_10_15n03depth + 1500, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15n03ch03 = scatter3(bpRFEFStim4_10_15n03ML, bpRFEFStim4_10_15n03AP, bpRFEFStim4_10_15n03depth + 1000, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15n03ch02 = scatter3(bpRFEFStim4_10_15n03ML, bpRFEFStim4_10_15n03AP, bpRFEFStim4_10_15n03depth +  500, dot_size, sacc_no, 'filled');
bpRFEFStim4_10_15n03ch01 = scatter3(bpRFEFStim4_10_15n03ML, bpRFEFStim4_10_15n03AP, bpRFEFStim4_10_15n03depth +    0, dot_size, sacc_no, 'filled');

%
% bpRFEFStim4_13_15
%

% variables
bpRFEFStim4_13_15depth = -8100;
bpRFEFStim4_13_15AP = -7;
bpRFEFStim4_13_15ML = -1;

% session depth + coordinates
bpRFEFStim4_13_15top = [bpRFEFStim4_13_15ML, bpRFEFStim4_13_15AP, 0];
bpRFEFStim4_13_15bottom = [bpRFEFStim4_13_15ML, bpRFEFStim4_13_15AP, bpRFEFStim4_13_15depth];
bpRFEFStim4_13_15 = [bpRFEFStim4_13_15top;bpRFEFStim4_13_15bottom];
plot3(bpRFEFStim4_13_15(:,1),bpRFEFStim4_13_15(:,2),bpRFEFStim4_13_15(:,3), 'w')

bpRFEFStim4_13_15ch06 = scatter3(bpRFEFStim4_13_15ML, bpRFEFStim4_13_15AP, bpRFEFStim4_13_15depth + 8000, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15ch05 = scatter3(bpRFEFStim4_13_15ML, bpRFEFStim4_13_15AP, bpRFEFStim4_13_15depth + 7500, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15ch04 = scatter3(bpRFEFStim4_13_15ML, bpRFEFStim4_13_15AP, bpRFEFStim4_13_15depth +  7000, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15ch03 = scatter3(bpRFEFStim4_13_15ML, bpRFEFStim4_13_15AP, bpRFEFStim4_13_15depth +  6500, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15ch02 = scatter3(bpRFEFStim4_13_15ML, bpRFEFStim4_13_15AP, bpRFEFStim4_13_15depth +  6000, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15ch01 = scatter3(bpRFEFStim4_13_15ML, bpRFEFStim4_13_15AP, bpRFEFStim4_13_15depth + 5500, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15ch10 = scatter3(bpRFEFStim4_13_15ML, bpRFEFStim4_13_15AP, bpRFEFStim4_13_15depth + 5000, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15ch09 = scatter3(bpRFEFStim4_13_15ML, bpRFEFStim4_13_15AP, bpRFEFStim4_13_15depth + 4500, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15ch08 = scatter3(bpRFEFStim4_13_15ML, bpRFEFStim4_13_15AP, bpRFEFStim4_13_15depth + 4000, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15ch07 = scatter3(bpRFEFStim4_13_15ML, bpRFEFStim4_13_15AP, bpRFEFStim4_13_15depth + 3500, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15ch06 = scatter3(bpRFEFStim4_13_15ML, bpRFEFStim4_13_15AP, bpRFEFStim4_13_15depth + 3000, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15ch05 = scatter3(bpRFEFStim4_13_15ML, bpRFEFStim4_13_15AP, bpRFEFStim4_13_15depth + 2500, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15ch04 = scatter3(bpRFEFStim4_13_15ML, bpRFEFStim4_13_15AP, bpRFEFStim4_13_15depth +  2000, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15ch03 = scatter3(bpRFEFStim4_13_15ML, bpRFEFStim4_13_15AP, bpRFEFStim4_13_15depth +  1500, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15ch02 = scatter3(bpRFEFStim4_13_15ML, bpRFEFStim4_13_15AP, bpRFEFStim4_13_15depth +  500, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15ch01 = scatter3(bpRFEFStim4_13_15ML, bpRFEFStim4_13_15AP, bpRFEFStim4_13_15depth +    0, dot_size, sacc_no, 'filled');

%
% bpRFEFStim4_13_15n02
%

% variables
bpRFEFStim4_13_15n02depth = -11000;
bpRFEFStim4_13_15n02AP = -1;
bpRFEFStim4_13_15n02ML = 1;

% session depth + coordinates
bpRFEFStim4_13_15n02top = [bpRFEFStim4_13_15n02ML, bpRFEFStim4_13_15n02AP, 0];
bpRFEFStim4_13_15n02bottom = [bpRFEFStim4_13_15n02ML, bpRFEFStim4_13_15n02AP, bpRFEFStim4_13_15n02depth];
bpRFEFStim4_13_15n02 = [bpRFEFStim4_13_15n02top;bpRFEFStim4_13_15n02bottom];
plot3(bpRFEFStim4_13_15n02(:,1),bpRFEFStim4_13_15n02(:,2),bpRFEFStim4_13_15n02(:,3), 'w')

bpRFEFStim4_13_15n02ch10 = scatter3(bpRFEFStim4_13_15n02ML, bpRFEFStim4_13_15n02AP, bpRFEFStim4_13_15n02depth + 9000, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15n02ch09 = scatter3(bpRFEFStim4_13_15n02ML, bpRFEFStim4_13_15n02AP, bpRFEFStim4_13_15n02depth + 8000, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15n02ch08 = scatter3(bpRFEFStim4_13_15n02ML, bpRFEFStim4_13_15n02AP, bpRFEFStim4_13_15n02depth + 7000, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15n02ch07 = scatter3(bpRFEFStim4_13_15n02ML, bpRFEFStim4_13_15n02AP, bpRFEFStim4_13_15n02depth + 6000, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15n02ch06 = scatter3(bpRFEFStim4_13_15n02ML, bpRFEFStim4_13_15n02AP, bpRFEFStim4_13_15n02depth + 5000, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15n02ch05 = scatter3(bpRFEFStim4_13_15n02ML, bpRFEFStim4_13_15n02AP, bpRFEFStim4_13_15n02depth + 4000, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15n02ch04 = scatter3(bpRFEFStim4_13_15n02ML, bpRFEFStim4_13_15n02AP, bpRFEFStim4_13_15n02depth +  3000, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15n02ch03 = scatter3(bpRFEFStim4_13_15n02ML, bpRFEFStim4_13_15n02AP, bpRFEFStim4_13_15n02depth +  2000, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15n02ch02 = scatter3(bpRFEFStim4_13_15n02ML, bpRFEFStim4_13_15n02AP, bpRFEFStim4_13_15n02depth +  1000, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15n02ch01 = scatter3(bpRFEFStim4_13_15n02ML, bpRFEFStim4_13_15n02AP, bpRFEFStim4_13_15n02depth +    0, dot_size, sacc_no, 'filled');

%
% bpRFEFStim4_13_15n03
%

% variables
bpRFEFStim4_13_15n03depth = -8884;
bpRFEFStim4_13_15n03AP = -4;
bpRFEFStim4_13_15n03ML = 2;

% session depth + coordinates
bpRFEFStim4_13_15n03top = [bpRFEFStim4_13_15n03ML, bpRFEFStim4_13_15n03AP, 0];
bpRFEFStim4_13_15n03bottom = [bpRFEFStim4_13_15n03ML, bpRFEFStim4_13_15n03AP, bpRFEFStim4_13_15n03depth];
bpRFEFStim4_13_15n03 = [bpRFEFStim4_13_15n03top;bpRFEFStim4_13_15n03bottom];
plot3(bpRFEFStim4_13_15n03(:,1),bpRFEFStim4_13_15n03(:,2),bpRFEFStim4_13_15n03(:,3), 'w')

bpRFEFStim4_13_15n03ch10 = scatter3(bpRFEFStim4_13_15n03ML, bpRFEFStim4_13_15n03AP, bpRFEFStim4_13_15n03depth + 9000, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15n03ch09 = scatter3(bpRFEFStim4_13_15n03ML, bpRFEFStim4_13_15n03AP, bpRFEFStim4_13_15n03depth + 8000, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15n03ch08 = scatter3(bpRFEFStim4_13_15n03ML, bpRFEFStim4_13_15n03AP, bpRFEFStim4_13_15n03depth + 7000, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15n03ch07 = scatter3(bpRFEFStim4_13_15n03ML, bpRFEFStim4_13_15n03AP, bpRFEFStim4_13_15n03depth + 6000, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15n03ch06 = scatter3(bpRFEFStim4_13_15n03ML, bpRFEFStim4_13_15n03AP, bpRFEFStim4_13_15n03depth + 5000, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15n03ch05 = scatter3(bpRFEFStim4_13_15n03ML, bpRFEFStim4_13_15n03AP, bpRFEFStim4_13_15n03depth + 4000, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15n03ch04 = scatter3(bpRFEFStim4_13_15n03ML, bpRFEFStim4_13_15n03AP, bpRFEFStim4_13_15n03depth +  3000, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15n03ch03 = scatter3(bpRFEFStim4_13_15n03ML, bpRFEFStim4_13_15n03AP, bpRFEFStim4_13_15n03depth +  2000, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15n03ch02 = scatter3(bpRFEFStim4_13_15n03ML, bpRFEFStim4_13_15n03AP, bpRFEFStim4_13_15n03depth +  1000, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15n03ch01 = scatter3(bpRFEFStim4_13_15n03ML, bpRFEFStim4_13_15n03AP, bpRFEFStim4_13_15n03depth +    0, dot_size, sacc_no, 'filled');

%
% bpRFEFStim4_13_15n04
%

% variables
bpRFEFStim4_13_15n04depth = -8617;
bpRFEFStim4_13_15n04AP = -5.5;
bpRFEFStim4_13_15n04ML = -3;

% session depth + coordinates
bpRFEFStim4_13_15n04top = [bpRFEFStim4_13_15n04ML, bpRFEFStim4_13_15n04AP, 0];
bpRFEFStim4_13_15n04bottom = [bpRFEFStim4_13_15n04ML, bpRFEFStim4_13_15n04AP, bpRFEFStim4_13_15n04depth];
bpRFEFStim4_13_15n04 = [bpRFEFStim4_13_15n04top;bpRFEFStim4_13_15n04bottom];
plot3(bpRFEFStim4_13_15n04(:,1),bpRFEFStim4_13_15n04(:,2),bpRFEFStim4_13_15n04(:,3), 'w')


bpRFEFStim4_13_15n04ch24 = scatter3(bpRFEFStim4_13_15n04ML, bpRFEFStim4_13_15n04AP, bpRFEFStim4_13_15n04depth + 6800, dot_size, sacc_yes, 'filled');
bpRFEFStim4_13_15n04ch23 = scatter3(bpRFEFStim4_13_15n04ML, bpRFEFStim4_13_15n04AP, bpRFEFStim4_13_15n04depth + 6500, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15n04ch22 = scatter3(bpRFEFStim4_13_15n04ML, bpRFEFStim4_13_15n04AP, bpRFEFStim4_13_15n04depth + 6200, dot_size, sacc_yes, 'filled');
bpRFEFStim4_13_15n04ch21 = scatter3(bpRFEFStim4_13_15n04ML, bpRFEFStim4_13_15n04AP, bpRFEFStim4_13_15n04depth + 5900, dot_size, sacc_yes, 'filled');
bpRFEFStim4_13_15n04ch20 = scatter3(bpRFEFStim4_13_15n04ML, bpRFEFStim4_13_15n04AP, bpRFEFStim4_13_15n04depth + 5600, dot_size, sacc_yes, 'filled');
bpRFEFStim4_13_15n04ch19 = scatter3(bpRFEFStim4_13_15n04ML, bpRFEFStim4_13_15n04AP, bpRFEFStim4_13_15n04depth + 5200, dot_size, sacc_yes, 'filled');
bpRFEFStim4_13_15n04ch18 = scatter3(bpRFEFStim4_13_15n04ML, bpRFEFStim4_13_15n04AP, bpRFEFStim4_13_15n04depth + 5000, dot_size, sacc_yes, 'filled');
bpRFEFStim4_13_15n04ch17 = scatter3(bpRFEFStim4_13_15n04ML, bpRFEFStim4_13_15n04AP, bpRFEFStim4_13_15n04depth + 4800, dot_size, sacc_yes, 'filled');
bpRFEFStim4_13_15n04ch16 = scatter3(bpRFEFStim4_13_15n04ML, bpRFEFStim4_13_15n04AP, bpRFEFStim4_13_15n04depth + 4500, dot_size, sacc_yes, 'filled');
bpRFEFStim4_13_15n04ch15 = scatter3(bpRFEFStim4_13_15n04ML, bpRFEFStim4_13_15n04AP, bpRFEFStim4_13_15n04depth + 4400, dot_size, sacc_yes, 'filled');
bpRFEFStim4_13_15n04ch14 = scatter3(bpRFEFStim4_13_15n04ML, bpRFEFStim4_13_15n04AP, bpRFEFStim4_13_15n04depth + 4100, dot_size, sacc_yes, 'filled');
bpRFEFStim4_13_15n04ch13 = scatter3(bpRFEFStim4_13_15n04ML, bpRFEFStim4_13_15n04AP, bpRFEFStim4_13_15n04depth + 3900, dot_size, sacc_yes, 'filled');
bpRFEFStim4_13_15n04ch12 = scatter3(bpRFEFStim4_13_15n04ML, bpRFEFStim4_13_15n04AP, bpRFEFStim4_13_15n04depth + 3700, dot_size, sacc_yes, 'filled');
bpRFEFStim4_13_15n04ch11 = scatter3(bpRFEFStim4_13_15n04ML, bpRFEFStim4_13_15n04AP, bpRFEFStim4_13_15n04depth + 3500, dot_size, sacc_yes, 'filled');
bpRFEFStim4_13_15n04ch10 = scatter3(bpRFEFStim4_13_15n04ML, bpRFEFStim4_13_15n04AP, bpRFEFStim4_13_15n04depth + 3200, dot_size, sacc_yes, 'filled');
bpRFEFStim4_13_15n04ch09 = scatter3(bpRFEFStim4_13_15n04ML, bpRFEFStim4_13_15n04AP, bpRFEFStim4_13_15n04depth + 3000, dot_size, sacc_yes, 'filled');
bpRFEFStim4_13_15n04ch08 = scatter3(bpRFEFStim4_13_15n04ML, bpRFEFStim4_13_15n04AP, bpRFEFStim4_13_15n04depth + 2700, dot_size, sacc_yes, 'filled');
bpRFEFStim4_13_15n04ch07 = scatter3(bpRFEFStim4_13_15n04ML, bpRFEFStim4_13_15n04AP, bpRFEFStim4_13_15n04depth + 2500, dot_size, sacc_yes, 'filled');
bpRFEFStim4_13_15n04ch06 = scatter3(bpRFEFStim4_13_15n04ML, bpRFEFStim4_13_15n04AP, bpRFEFStim4_13_15n04depth + 2200, dot_size, sacc_yes, 'filled');
bpRFEFStim4_13_15n04ch05 = scatter3(bpRFEFStim4_13_15n04ML, bpRFEFStim4_13_15n04AP, bpRFEFStim4_13_15n04depth + 2000, dot_size, sacc_yes, 'filled');
bpRFEFStim4_13_15n04ch04 = scatter3(bpRFEFStim4_13_15n04ML, bpRFEFStim4_13_15n04AP, bpRFEFStim4_13_15n04depth + 1500, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15n04ch03 = scatter3(bpRFEFStim4_13_15n04ML, bpRFEFStim4_13_15n04AP, bpRFEFStim4_13_15n04depth + 1000, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15n04ch02 = scatter3(bpRFEFStim4_13_15n04ML, bpRFEFStim4_13_15n04AP, bpRFEFStim4_13_15n04depth +  500, dot_size, sacc_no, 'filled');
bpRFEFStim4_13_15n04ch01 = scatter3(bpRFEFStim4_13_15n04ML, bpRFEFStim4_13_15n04AP, bpRFEFStim4_13_15n04depth +    0, dot_size, sacc_no, 'filled');

%
% bpRFEFStim4_17_15
%

% variables
bpRFEFStim4_17_15depth = -12400;
bpRFEFStim4_17_15AP = -6;
bpRFEFStim4_17_15ML = -1;

% session depth + coordinates
bpRFEFStim4_17_15top = [bpRFEFStim4_17_15ML, bpRFEFStim4_17_15AP, 0];
bpRFEFStim4_17_15bottom = [bpRFEFStim4_17_15ML, bpRFEFStim4_17_15AP, bpRFEFStim4_17_15depth];
bpRFEFStim4_17_15 = [bpRFEFStim4_17_15top;bpRFEFStim4_17_15bottom];
plot3(bpRFEFStim4_17_15(:,1),bpRFEFStim4_17_15(:,2),bpRFEFStim4_17_15(:,3), 'w')

bpRFEFStim4_17_15ch17 = scatter3(bpRFEFStim4_17_15ML, bpRFEFStim4_17_15AP, bpRFEFStim4_17_15depth + 11400, dot_size, sacc_yes, 'filled');
bpRFEFStim4_17_15ch16 = scatter3(bpRFEFStim4_17_15ML, bpRFEFStim4_17_15AP, bpRFEFStim4_17_15depth + 10700, dot_size, sacc_yes, 'filled');
bpRFEFStim4_17_15ch15 = scatter3(bpRFEFStim4_17_15ML, bpRFEFStim4_17_15AP, bpRFEFStim4_17_15depth + 10100, dot_size, sacc_yes, 'filled');
bpRFEFStim4_17_15ch14 = scatter3(bpRFEFStim4_17_15ML, bpRFEFStim4_17_15AP, bpRFEFStim4_17_15depth +  10000, dot_size, sacc_yes, 'filled');
bpRFEFStim4_17_15ch13 = scatter3(bpRFEFStim4_17_15ML, bpRFEFStim4_17_15AP, bpRFEFStim4_17_15depth +  9000, dot_size, sacc_yes, 'filled');
bpRFEFStim4_17_15ch12 = scatter3(bpRFEFStim4_17_15ML, bpRFEFStim4_17_15AP, bpRFEFStim4_17_15depth +  8000, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15ch11 = scatter3(bpRFEFStim4_17_15ML, bpRFEFStim4_17_15AP, bpRFEFStim4_17_15depth + 7000, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15ch10 = scatter3(bpRFEFStim4_17_15ML, bpRFEFStim4_17_15AP, bpRFEFStim4_17_15depth + 6700, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15ch09 = scatter3(bpRFEFStim4_17_15ML, bpRFEFStim4_17_15AP, bpRFEFStim4_17_15depth + 6500, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15ch08 = scatter3(bpRFEFStim4_17_15ML, bpRFEFStim4_17_15AP, bpRFEFStim4_17_15depth + 6300, dot_size, sacc_yes, 'filled');
bpRFEFStim4_17_15ch07 = scatter3(bpRFEFStim4_17_15ML, bpRFEFStim4_17_15AP, bpRFEFStim4_17_15depth + 6000, dot_size, sacc_yes, 'filled');
bpRFEFStim4_17_15ch06 = scatter3(bpRFEFStim4_17_15ML, bpRFEFStim4_17_15AP, bpRFEFStim4_17_15depth + 5000, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15ch05 = scatter3(bpRFEFStim4_17_15ML, bpRFEFStim4_17_15AP, bpRFEFStim4_17_15depth + 4000, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15ch04 = scatter3(bpRFEFStim4_17_15ML, bpRFEFStim4_17_15AP, bpRFEFStim4_17_15depth +  3000, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15ch03 = scatter3(bpRFEFStim4_17_15ML, bpRFEFStim4_17_15AP, bpRFEFStim4_17_15depth +  2000, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15ch02 = scatter3(bpRFEFStim4_17_15ML, bpRFEFStim4_17_15AP, bpRFEFStim4_17_15depth +  1000, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15ch01 = scatter3(bpRFEFStim4_17_15ML, bpRFEFStim4_17_15AP, bpRFEFStim4_17_15depth +    0, dot_size, sacc_no, 'filled');

%
% bpRFEFStim4_17_15n02
%

% variables
bpRFEFStim4_17_15n02depth = -6300;
bpRFEFStim4_17_15n02AP = -2;
bpRFEFStim4_17_15n02ML = 0;

% session depth + coordinates
bpRFEFStim4_17_15n02top = [bpRFEFStim4_17_15n02ML, bpRFEFStim4_17_15n02AP, 0];
bpRFEFStim4_17_15n02bottom = [bpRFEFStim4_17_15n02ML, bpRFEFStim4_17_15n02AP, bpRFEFStim4_17_15n02depth];
bpRFEFStim4_17_15n02 = [bpRFEFStim4_17_15n02top;bpRFEFStim4_17_15n02bottom];
plot3(bpRFEFStim4_17_15n02(:,1),bpRFEFStim4_17_15n02(:,2),bpRFEFStim4_17_15n02(:,3), 'w')

bpRFEFStim4_17_15n02ch10 = scatter3(bpRFEFStim4_17_15n02ML, bpRFEFStim4_17_15n02AP, bpRFEFStim4_17_15n02depth + 4500, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15n02ch09 = scatter3(bpRFEFStim4_17_15n02ML, bpRFEFStim4_17_15n02AP, bpRFEFStim4_17_15n02depth + 4000, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15n02ch08 = scatter3(bpRFEFStim4_17_15n02ML, bpRFEFStim4_17_15n02AP, bpRFEFStim4_17_15n02depth + 3500, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15n02ch07 = scatter3(bpRFEFStim4_17_15n02ML, bpRFEFStim4_17_15n02AP, bpRFEFStim4_17_15n02depth + 3000, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15n02ch06 = scatter3(bpRFEFStim4_17_15n02ML, bpRFEFStim4_17_15n02AP, bpRFEFStim4_17_15n02depth + 2500, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15n02ch05 = scatter3(bpRFEFStim4_17_15n02ML, bpRFEFStim4_17_15n02AP, bpRFEFStim4_17_15n02depth + 2000, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15n02ch04 = scatter3(bpRFEFStim4_17_15n02ML, bpRFEFStim4_17_15n02AP, bpRFEFStim4_17_15n02depth +  1500, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15n02ch03 = scatter3(bpRFEFStim4_17_15n02ML, bpRFEFStim4_17_15n02AP, bpRFEFStim4_17_15n02depth +  1000, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15n02ch02 = scatter3(bpRFEFStim4_17_15n02ML, bpRFEFStim4_17_15n02AP, bpRFEFStim4_17_15n02depth +  500, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15n02ch01 = scatter3(bpRFEFStim4_17_15n02ML, bpRFEFStim4_17_15n02AP, bpRFEFStim4_17_15n02depth +    0, dot_size, sacc_no, 'filled');

%
% bpRFEFStim4_17_15n03
%

% variables
bpRFEFStim4_17_15n03depth = -5900;
bpRFEFStim4_17_15n03AP = -5;
bpRFEFStim4_17_15n03ML = 0;

% session depth + coordinates
bpRFEFStim4_17_15n03top = [bpRFEFStim4_17_15n03ML, bpRFEFStim4_17_15n03AP, 0];
bpRFEFStim4_17_15n03bottom = [bpRFEFStim4_17_15n03ML, bpRFEFStim4_17_15n03AP, bpRFEFStim4_17_15n03depth];
bpRFEFStim4_17_15n03 = [bpRFEFStim4_17_15n03top;bpRFEFStim4_17_15n03bottom];
plot3(bpRFEFStim4_17_15n03(:,1),bpRFEFStim4_17_15n03(:,2),bpRFEFStim4_17_15n03(:,3), 'w')


bpRFEFStim4_17_15n03ch12 = scatter3(bpRFEFStim4_17_15n03ML, bpRFEFStim4_17_15n03AP, bpRFEFStim4_17_15n03depth + 8000, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15n03ch11 = scatter3(bpRFEFStim4_17_15n03ML, bpRFEFStim4_17_15n03AP, bpRFEFStim4_17_15n03depth + 7000, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15n03ch10 = scatter3(bpRFEFStim4_17_15n03ML, bpRFEFStim4_17_15n03AP, bpRFEFStim4_17_15n03depth + 6000, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15n03ch09 = scatter3(bpRFEFStim4_17_15n03ML, bpRFEFStim4_17_15n03AP, bpRFEFStim4_17_15n03depth + 5500, dot_size, sacc_yes, 'filled');
bpRFEFStim4_17_15n03ch08 = scatter3(bpRFEFStim4_17_15n03ML, bpRFEFStim4_17_15n03AP, bpRFEFStim4_17_15n03depth + 5000, dot_size, sacc_yes, 'filled');
bpRFEFStim4_17_15n03ch07 = scatter3(bpRFEFStim4_17_15n03ML, bpRFEFStim4_17_15n03AP, bpRFEFStim4_17_15n03depth + 5500, dot_size, sacc_yes, 'filled');
bpRFEFStim4_17_15n03ch06 = scatter3(bpRFEFStim4_17_15n03ML, bpRFEFStim4_17_15n03AP, bpRFEFStim4_17_15n03depth + 5000, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15n03ch05 = scatter3(bpRFEFStim4_17_15n03ML, bpRFEFStim4_17_15n03AP, bpRFEFStim4_17_15n03depth + 4000, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15n03ch04 = scatter3(bpRFEFStim4_17_15n03ML, bpRFEFStim4_17_15n03AP, bpRFEFStim4_17_15n03depth +  3000, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15n03ch03 = scatter3(bpRFEFStim4_17_15n03ML, bpRFEFStim4_17_15n03AP, bpRFEFStim4_17_15n03depth +  2000, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15n03ch02 = scatter3(bpRFEFStim4_17_15n03ML, bpRFEFStim4_17_15n03AP, bpRFEFStim4_17_15n03depth +  1000, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15n03ch01 = scatter3(bpRFEFStim4_17_15n03ML, bpRFEFStim4_17_15n03AP, bpRFEFStim4_17_15n03depth +    0, dot_size, sacc_no, 'filled');

%
% bpRFEFStim4_17_15n04
%

% variables
bpRFEFStim4_17_15n04depth = -5079;
bpRFEFStim4_17_15n04AP = -7;
bpRFEFStim4_17_15n04ML = 0;

% session depth + coordinates
bpRFEFStim4_17_15n04top = [bpRFEFStim4_17_15n04ML, bpRFEFStim4_17_15n04AP, 0];
bpRFEFStim4_17_15n04bottom = [bpRFEFStim4_17_15n04ML, bpRFEFStim4_17_15n04AP, bpRFEFStim4_17_15n04depth];
bpRFEFStim4_17_15n04 = [bpRFEFStim4_17_15n04top;bpRFEFStim4_17_15n04bottom];
plot3(bpRFEFStim4_17_15n04(:,1),bpRFEFStim4_17_15n04(:,2),bpRFEFStim4_17_15n04(:,3), 'w')

bpRFEFStim4_17_15n04ch06 = scatter3(bpRFEFStim4_17_15n04ML, bpRFEFStim4_17_15n04AP, bpRFEFStim4_17_15n04depth + 5000, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15n04ch05 = scatter3(bpRFEFStim4_17_15n04ML, bpRFEFStim4_17_15n04AP, bpRFEFStim4_17_15n04depth + 4000, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15n04ch04 = scatter3(bpRFEFStim4_17_15n04ML, bpRFEFStim4_17_15n04AP, bpRFEFStim4_17_15n04depth +  3000, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15n04ch03 = scatter3(bpRFEFStim4_17_15n04ML, bpRFEFStim4_17_15n04AP, bpRFEFStim4_17_15n04depth +  2000, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15n04ch02 = scatter3(bpRFEFStim4_17_15n04ML, bpRFEFStim4_17_15n04AP, bpRFEFStim4_17_15n04depth +  1000, dot_size, sacc_no, 'filled');
bpRFEFStim4_17_15n04ch01 = scatter3(bpRFEFStim4_17_15n04ML, bpRFEFStim4_17_15n04AP, bpRFEFStim4_17_15n04depth +    0, dot_size, sacc_no, 'filled');

%
% bpRFEFStim4_21_15
%

% variables
bpRFEFStim4_21_15depth = -8400;
bpRFEFStim4_21_15AP = -5.5;
bpRFEFStim4_21_15ML = -2;

% session depth + coordinates
bpRFEFStim4_21_15top = [bpRFEFStim4_21_15ML, bpRFEFStim4_21_15AP, 0];
bpRFEFStim4_21_15bottom = [bpRFEFStim4_21_15ML, bpRFEFStim4_21_15AP, bpRFEFStim4_21_15depth];
bpRFEFStim4_21_15 = [bpRFEFStim4_21_15top;bpRFEFStim4_21_15bottom];
plot3(bpRFEFStim4_21_15(:,1),bpRFEFStim4_21_15(:,2),bpRFEFStim4_21_15(:,3), 'w')

bpRFEFStim4_21_15ch09 = scatter3(bpRFEFStim4_21_15ML, bpRFEFStim4_21_15AP, bpRFEFStim4_21_15depth + 8000, dot_size, sacc_no, 'filled');
bpRFEFStim4_21_15ch08 = scatter3(bpRFEFStim4_21_15ML, bpRFEFStim4_21_15AP, bpRFEFStim4_21_15depth + 7000, dot_size, sacc_no, 'filled');
bpRFEFStim4_21_15ch07 = scatter3(bpRFEFStim4_21_15ML, bpRFEFStim4_21_15AP, bpRFEFStim4_21_15depth + 6000, dot_size, sacc_no, 'filled');
bpRFEFStim4_21_15ch06 = scatter3(bpRFEFStim4_21_15ML, bpRFEFStim4_21_15AP, bpRFEFStim4_21_15depth + 5000, dot_size, sacc_no, 'filled');
bpRFEFStim4_21_15ch05 = scatter3(bpRFEFStim4_21_15ML, bpRFEFStim4_21_15AP, bpRFEFStim4_21_15depth + 4000, dot_size, sacc_no, 'filled');
bpRFEFStim4_21_15ch04 = scatter3(bpRFEFStim4_21_15ML, bpRFEFStim4_21_15AP, bpRFEFStim4_21_15depth +  3000, dot_size, sacc_no, 'filled');
bpRFEFStim4_21_15ch03 = scatter3(bpRFEFStim4_21_15ML, bpRFEFStim4_21_15AP, bpRFEFStim4_21_15depth +  2000, dot_size, sacc_no, 'filled');
bpRFEFStim4_21_15ch02 = scatter3(bpRFEFStim4_21_15ML, bpRFEFStim4_21_15AP, bpRFEFStim4_21_15depth +  1000, dot_size, sacc_no, 'filled');
bpRFEFStim4_21_15ch01 = scatter3(bpRFEFStim4_21_15ML, bpRFEFStim4_21_15AP, bpRFEFStim4_21_15depth +    0, dot_size, sacc_no, 'filled');

%
% bpRFEFStim4_23_15
%

% variables
bpRFEFStim4_23_15depth = -6700;
bpRFEFStim4_23_15AP = -5.5;
bpRFEFStim4_23_15ML = -3;

% session depth + coordinates
bpRFEFStim4_23_15top = [bpRFEFStim4_23_15ML, bpRFEFStim4_23_15AP, 0];
bpRFEFStim4_23_15bottom = [bpRFEFStim4_23_15ML, bpRFEFStim4_23_15AP, bpRFEFStim4_23_15depth];
bpRFEFStim4_23_15 = [bpRFEFStim4_23_15top;bpRFEFStim4_23_15bottom];
plot3(bpRFEFStim4_23_15(:,1),bpRFEFStim4_23_15(:,2),bpRFEFStim4_23_15(:,3), 'w')

bpRFEFStim4_23_15ch06 = scatter3(bpRFEFStim4_23_15ML, bpRFEFStim4_23_15AP, bpRFEFStim4_23_15depth + 6000, dot_size, sacc_no, 'filled');
bpRFEFStim4_23_15ch05 = scatter3(bpRFEFStim4_23_15ML, bpRFEFStim4_23_15AP, bpRFEFStim4_23_15depth + 5000, dot_size, sacc_no, 'filled');
bpRFEFStim4_23_15ch04 = scatter3(bpRFEFStim4_23_15ML, bpRFEFStim4_23_15AP, bpRFEFStim4_23_15depth +  3000, dot_size, sacc_no, 'filled');
bpRFEFStim4_23_15ch03 = scatter3(bpRFEFStim4_23_15ML, bpRFEFStim4_23_15AP, bpRFEFStim4_23_15depth +  2000, dot_size, sacc_no, 'filled');
bpRFEFStim4_23_15ch02 = scatter3(bpRFEFStim4_23_15ML, bpRFEFStim4_23_15AP, bpRFEFStim4_23_15depth +  1000, dot_size, sacc_no, 'filled');
bpRFEFStim4_23_15ch01 = scatter3(bpRFEFStim4_23_15ML, bpRFEFStim4_23_15AP, bpRFEFStim4_23_15depth +    0, dot_size, sacc_no, 'filled');

%
% bpRFEFStim4_27_15
%

% variables
bpRFEFStim4_27_15depth = -8150;
bpRFEFStim4_27_15AP = -6;
bpRFEFStim4_27_15ML = 0;

% session depth + coordinates
bpRFEFStim4_27_15top = [bpRFEFStim4_27_15ML, bpRFEFStim4_27_15AP, 0];
bpRFEFStim4_27_15bottom = [bpRFEFStim4_27_15ML, bpRFEFStim4_27_15AP, bpRFEFStim4_27_15depth];
bpRFEFStim4_27_15 = [bpRFEFStim4_27_15top;bpRFEFStim4_27_15bottom];
plot3(bpRFEFStim4_27_15(:,1),bpRFEFStim4_27_15(:,2),bpRFEFStim4_27_15(:,3), 'w')

bpRFEFStim4_27_15ch09 = scatter3(bpRFEFStim4_27_15ML, bpRFEFStim4_27_15AP, bpRFEFStim4_27_15depth + 8000, dot_size, sacc_no, 'filled');
bpRFEFStim4_27_15ch08 = scatter3(bpRFEFStim4_27_15ML, bpRFEFStim4_27_15AP, bpRFEFStim4_27_15depth + 7000, dot_size, sacc_no, 'filled');
bpRFEFStim4_27_15ch07 = scatter3(bpRFEFStim4_27_15ML, bpRFEFStim4_27_15AP, bpRFEFStim4_27_15depth + 6000, dot_size, sacc_no, 'filled');
bpRFEFStim4_27_15ch06 = scatter3(bpRFEFStim4_27_15ML, bpRFEFStim4_27_15AP, bpRFEFStim4_27_15depth + 5000, dot_size, sacc_no, 'filled');
bpRFEFStim4_27_15ch05 = scatter3(bpRFEFStim4_27_15ML, bpRFEFStim4_27_15AP, bpRFEFStim4_27_15depth + 4000, dot_size, sacc_no, 'filled');
bpRFEFStim4_27_15ch04 = scatter3(bpRFEFStim4_27_15ML, bpRFEFStim4_27_15AP, bpRFEFStim4_27_15depth +  3000, dot_size, sacc_no, 'filled');
bpRFEFStim4_27_15ch03 = scatter3(bpRFEFStim4_27_15ML, bpRFEFStim4_27_15AP, bpRFEFStim4_27_15depth +  2000, dot_size, sacc_no, 'filled');
bpRFEFStim4_27_15ch02 = scatter3(bpRFEFStim4_27_15ML, bpRFEFStim4_27_15AP, bpRFEFStim4_27_15depth +  1000, dot_size, sacc_no, 'filled');
bpRFEFStim4_27_15ch01 = scatter3(bpRFEFStim4_27_15ML, bpRFEFStim4_27_15AP, bpRFEFStim4_27_15depth +    0, dot_size, sacc_no, 'filled');

%
% bpRFEFStim4_27_15n02
%

% variables
bpRFEFStim4_27_15n02depth = -6500;
bpRFEFStim4_27_15n02AP = -8;
bpRFEFStim4_27_15n02ML = 0;

% session depth + coordinates
bpRFEFStim4_27_15n02top = [bpRFEFStim4_27_15n02ML, bpRFEFStim4_27_15n02AP, 0];
bpRFEFStim4_27_15n02bottom = [bpRFEFStim4_27_15n02ML, bpRFEFStim4_27_15n02AP, bpRFEFStim4_27_15n02depth];
bpRFEFStim4_27_15n02 = [bpRFEFStim4_27_15n02top;bpRFEFStim4_27_15n02bottom];
plot3(bpRFEFStim4_27_15n02(:,1),bpRFEFStim4_27_15n02(:,2),bpRFEFStim4_27_15n02(:,3), 'w')

bpRFEFStim4_27_15n02ch07 = scatter3(bpRFEFStim4_27_15n02ML, bpRFEFStim4_27_15n02AP, bpRFEFStim4_27_15n02depth + 6000, dot_size, sacc_no, 'filled');
bpRFEFStim4_27_15n02ch06 = scatter3(bpRFEFStim4_27_15n02ML, bpRFEFStim4_27_15n02AP, bpRFEFStim4_27_15n02depth + 5000, dot_size, sacc_no, 'filled');
bpRFEFStim4_27_15n02ch05 = scatter3(bpRFEFStim4_27_15n02ML, bpRFEFStim4_27_15n02AP, bpRFEFStim4_27_15n02depth + 4000, dot_size, sacc_no, 'filled');
bpRFEFStim4_27_15n02ch04 = scatter3(bpRFEFStim4_27_15n02ML, bpRFEFStim4_27_15n02AP, bpRFEFStim4_27_15n02depth +  3000, dot_size, sacc_no, 'filled');
bpRFEFStim4_27_15n02ch03 = scatter3(bpRFEFStim4_27_15n02ML, bpRFEFStim4_27_15n02AP, bpRFEFStim4_27_15n02depth +  2000, dot_size, sacc_no, 'filled');
bpRFEFStim4_27_15n02ch02 = scatter3(bpRFEFStim4_27_15n02ML, bpRFEFStim4_27_15n02AP, bpRFEFStim4_27_15n02depth +  1000, dot_size, sacc_no, 'filled');
bpRFEFStim4_27_15n02ch01 = scatter3(bpRFEFStim4_27_15n02ML, bpRFEFStim4_27_15n02AP, bpRFEFStim4_27_15n02depth +    0, dot_size, sacc_no, 'filled');

%
% bpRFEFStim8_21_15
%

% variables
bpRFEFStim8_21_15depth = -7300;
bpRFEFStim8_21_15AP = -7;
bpRFEFStim8_21_15ML = 0;

% session depth + coordinates
bpRFEFStim8_21_15top = [bpRFEFStim8_21_15ML, bpRFEFStim8_21_15AP, 0];
bpRFEFStim8_21_15bottom = [bpRFEFStim8_21_15ML, bpRFEFStim8_21_15AP, bpRFEFStim8_21_15depth];
bpRFEFStim8_21_15 = [bpRFEFStim8_21_15top;bpRFEFStim8_21_15bottom];
plot3(bpRFEFStim8_21_15(:,1),bpRFEFStim8_21_15(:,2),bpRFEFStim8_21_15(:,3), 'w')


bpRFEFStim8_21_15ch24 = scatter3(bpRFEFStim8_21_15ML, bpRFEFStim8_21_15AP, bpRFEFStim8_21_15depth + 7000, dot_size, sacc_no, 'filled');
bpRFEFStim8_21_15ch23 = scatter3(bpRFEFStim8_21_15ML, bpRFEFStim8_21_15AP, bpRFEFStim8_21_15depth + 6600, dot_size, sacc_no, 'filled');
bpRFEFStim8_21_15ch22 = scatter3(bpRFEFStim8_21_15ML, bpRFEFStim8_21_15AP, bpRFEFStim8_21_15depth + 6200, dot_size, sacc_no, 'filled');
bpRFEFStim8_21_15ch21 = scatter3(bpRFEFStim8_21_15ML, bpRFEFStim8_21_15AP, bpRFEFStim8_21_15depth + 5800, dot_size, sacc_no, 'filled');
bpRFEFStim8_21_15ch20 = scatter3(bpRFEFStim8_21_15ML, bpRFEFStim8_21_15AP, bpRFEFStim8_21_15depth + 5400, dot_size, sacc_no, 'filled');
bpRFEFStim8_21_15ch19 = scatter3(bpRFEFStim8_21_15ML, bpRFEFStim8_21_15AP, bpRFEFStim8_21_15depth + 5000, dot_size, sacc_no, 'filled');
bpRFEFStim8_21_15ch18 = scatter3(bpRFEFStim8_21_15ML, bpRFEFStim8_21_15AP, bpRFEFStim8_21_15depth + 4600, dot_size, sacc_no, 'filled');
bpRFEFStim8_21_15ch17 = scatter3(bpRFEFStim8_21_15ML, bpRFEFStim8_21_15AP, bpRFEFStim8_21_15depth + 4200, dot_size, sacc_no, 'filled');
bpRFEFStim8_21_15ch16 = scatter3(bpRFEFStim8_21_15ML, bpRFEFStim8_21_15AP, bpRFEFStim8_21_15depth + 3800, dot_size, sacc_no, 'filled');
bpRFEFStim8_21_15ch15 = scatter3(bpRFEFStim8_21_15ML, bpRFEFStim8_21_15AP, bpRFEFStim8_21_15depth + 3400, dot_size, sacc_no, 'filled');
bpRFEFStim8_21_15ch14 = scatter3(bpRFEFStim8_21_15ML, bpRFEFStim8_21_15AP, bpRFEFStim8_21_15depth + 3000, dot_size, sacc_no, 'filled');
bpRFEFStim8_21_15ch13 = scatter3(bpRFEFStim8_21_15ML, bpRFEFStim8_21_15AP, bpRFEFStim8_21_15depth + 2500, dot_size, sacc_yes, 'filled');
bpRFEFStim8_21_15ch12 = scatter3(bpRFEFStim8_21_15ML, bpRFEFStim8_21_15AP, bpRFEFStim8_21_15depth + 2300, dot_size, sacc_yes, 'filled');
bpRFEFStim8_21_15ch11 = scatter3(bpRFEFStim8_21_15ML, bpRFEFStim8_21_15AP, bpRFEFStim8_21_15depth + 2100, dot_size, sacc_yes, 'filled');
bpRFEFStim8_21_15ch10 = scatter3(bpRFEFStim8_21_15ML, bpRFEFStim8_21_15AP, bpRFEFStim8_21_15depth + 1900, dot_size, sacc_yes, 'filled');
bpRFEFStim8_21_15ch09 = scatter3(bpRFEFStim8_21_15ML, bpRFEFStim8_21_15AP, bpRFEFStim8_21_15depth + 1700, dot_size, sacc_yes, 'filled');
bpRFEFStim8_21_15ch08 = scatter3(bpRFEFStim8_21_15ML, bpRFEFStim8_21_15AP, bpRFEFStim8_21_15depth + 1500, dot_size, sacc_yes, 'filled');
bpRFEFStim8_21_15ch07 = scatter3(bpRFEFStim8_21_15ML, bpRFEFStim8_21_15AP, bpRFEFStim8_21_15depth + 1300, dot_size, sacc_yes, 'filled');
bpRFEFStim8_21_15ch06 = scatter3(bpRFEFStim8_21_15ML, bpRFEFStim8_21_15AP, bpRFEFStim8_21_15depth + 1100, dot_size, sacc_yes, 'filled');
bpRFEFStim8_21_15ch05 = scatter3(bpRFEFStim8_21_15ML, bpRFEFStim8_21_15AP, bpRFEFStim8_21_15depth + 900, dot_size, sacc_yes, 'filled');
bpRFEFStim8_21_15ch04 = scatter3(bpRFEFStim8_21_15ML, bpRFEFStim8_21_15AP, bpRFEFStim8_21_15depth +  700, dot_size, sacc_yes, 'filled');
bpRFEFStim8_21_15ch03 = scatter3(bpRFEFStim8_21_15ML, bpRFEFStim8_21_15AP, bpRFEFStim8_21_15depth +  500, dot_size, sacc_yes, 'filled');
bpRFEFStim8_21_15ch02 = scatter3(bpRFEFStim8_21_15ML, bpRFEFStim8_21_15AP, bpRFEFStim8_21_15depth +  300, dot_size, sacc_yes, 'filled');
bpRFEFStim8_21_15ch01 = scatter3(bpRFEFStim8_21_15ML, bpRFEFStim8_21_15AP, bpRFEFStim8_21_15depth +    0, dot_size, sacc_yes, 'filled');


% plot chamber cylinder
[x1,y1,z1]=cylinder(9.5,50);
[x2,y2,z2]=cylinder(9.5,50);

z1=z1 + 0;
z2= z2 - 10000;
s1=surf(x1,y1,z1);
s2=surf(x2,y2,z2);

% setup plot dimensions/variables
grid on;
box on;
set(gca,'LineWidth',3)
axis([-10, 10, -10, 10, -10000, 1000])
title('Br RFEF Stimulation Penetrations', 'fontsize', 24);

set(gcf, 'units', 'norm', 'position', [0 0 .5 .9])