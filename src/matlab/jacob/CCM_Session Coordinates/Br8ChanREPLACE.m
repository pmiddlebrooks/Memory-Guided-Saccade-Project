% variables
bpREPLACEdepth = -7500;
bpREPLACEAP = -6.5;
bpREPLACEML = -5;

% session depth + coordinates
bpREPLACEtop = [bpREPLACEML, bpREPLACEAP, 0];
bpREPLACEbottom = [bpREPLACEML, bpREPLACEAP, bpREPLACEdepth];
bpREPLACE = [bpREPLACEtop;bpREPLACEbottom];
plot3(bpREPLACE(:,1),bpREPLACE(:,2),bpREPLACE(:,3),'k')

bpREPLACEch08 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth + 1400, dot_size, 'r', 'filled');
bpREPLACEch07 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth + 1200, dot_size, 'r', 'filled');
bpREPLACEch06 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth + 1000, dot_size, 'r', 'filled');
bpREPLACEch05 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth +  800, dot_size, 'r', 'filled');
bpREPLACEch04 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth +  600, dot_size, 'r', 'filled');
bpREPLACEch03 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth +  400, dot_size, 'r', 'filled');
bpREPLACEch02 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth +  200, dot_size, 'r', 'filled');
bpREPLACEch01 = scatter3(bpREPLACEML, bpREPLACEAP, bpREPLACEdepth +    0, dot_size, 'r', 'filled');