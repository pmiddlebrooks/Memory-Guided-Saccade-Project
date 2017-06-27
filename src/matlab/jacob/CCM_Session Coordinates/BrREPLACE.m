
% variables
bpREPLACEdepth = -7500;
bpREPLACEAP = -6.5;
bpREPLACEML = -5;

% session depth + coordinates
bpREPLACEtop = [bpREPLACEML, bpREPLACEAP, 0];
bpREPLACEbottom = [bpREPLACEML, bpREPLACEAP, bpREPLACEdepth];
bpREPLACE = [bpREPLACEtop;bpREPLACEbottom];
plot3(bpREPLACE(:,1),bpREPLACE(:,2),bpREPLACE(:,3),'k')

bpREPLACEch32 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth + 4650, dot_size, 'r', 'filled');
bpREPLACEch31 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth + 4500, dot_size, 'r', 'filled');
bpREPLACEch30 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth + 4350, dot_size, 'r', 'filled');
bpREPLACEch29 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth + 4200, dot_size, 'r', 'filled');
bpREPLACEch28 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth + 4050, dot_size, 'r', 'filled');
bpREPLACEch27 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth + 3900, dot_size, 'r', 'filled');
bpREPLACEch26 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth + 3750, dot_size, 'r', 'filled');
bpREPLACEch25 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth + 3600, dot_size, 'r', 'filled');
bpREPLACEch24 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth + 3450, dot_size, 'r', 'filled');
bpREPLACEch23 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth + 3300, dot_size, 'r', 'filled');
bpREPLACEch22 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth + 3150, dot_size, 'r', 'filled');
bpREPLACEch21 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth + 3000, dot_size, 'r', 'filled');
bpREPLACEch20 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth + 2850, dot_size, 'r', 'filled');
bpREPLACEch19 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth + 2700, dot_size, 'r', 'filled');
bpREPLACEch18 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth + 2550, dot_size, 'r', 'filled');
bpREPLACEch17 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth + 2400, dot_size, 'r', 'filled');
bpREPLACEch16 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth + 2250, dot_size, 'r', 'filled');
bpREPLACEch15 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth + 2100, dot_size, 'r', 'filled');
bpREPLACEch14 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth + 1950, dot_size, 'r', 'filled');
bpREPLACEch13 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth + 1800, dot_size, 'r', 'filled');
bpREPLACEch12 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth + 1650, dot_size, 'r', 'filled');
bpREPLACEch11 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth + 1500, dot_size, 'r', 'filled');
bpREPLACEch10 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth + 1350, dot_size, 'r', 'filled');
bpREPLACEch09 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth + 1200, dot_size, 'r', 'filled');
bpREPLACEch08 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth + 1050, dot_size, 'r', 'filled');
bpREPLACEch07 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth +  900, dot_size, 'r', 'filled');
bpREPLACEch06 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth +  750, dot_size, 'r', 'filled');
bpREPLACEch05 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth +  600, dot_size, 'r', 'filled');
bpREPLACEch04 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth +  450, dot_size, 'r', 'filled');
bpREPLACEch03 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth +  300, dot_size, 'r', 'filled');
bpREPLACEch02 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth +  150, dot_size, 'r', 'filled');
bpREPLACEch01 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth +    0, dot_size, 'r', 'filled');






% variables
bpREPLACEdepth = -3750;
bpREPLACEAP = -4.5;
bpREPLACEML = -4.5;

% session depth + coordinates
bpREPLACEtop = [bpREPLACEML, bpREPLACEAP, 0];
bpREPLACEbottom = [bpREPLACEML, bpREPLACEAP, bpREPLACEdepth];
bpREPLACE = [bpREPLACEtop;bpREPLACEbottom];
plot3(bpREPLACE(:,1),bpREPLACE(:,2),bpREPLACE(:,3),'k')


bpREPLACEch01 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth +    0, dot_size, 'r', 'filled');