%
% bpLFEFStimREPLACE
%

% variables
bpLFEFStimREPLACEdepth = -6475;
bpLFEFStimREPLACEAP = -4;
bpLFEFStimREPLACEML = -4.5;

% session depth + coordinates
bpLFEFStimREPLACEtop = [bpLFEFStimREPLACEML, bpLFEFStimREPLACEAP, 0];
bpLFEFStimREPLACEbottom = [bpLFEFStimREPLACEML, bpLFEFStimREPLACEAP, bpLFEFStimREPLACEdepth];
bpLFEFStimREPLACE = [bpLFEFStimREPLACEtop;bpLFEFStimREPLACEbottom];
plot3(bpLFEFStimREPLACE(:,1),bpLFEFStimREPLACE(:,2),bpLFEFStimREPLACE(:,3), 'r')

bpLFEFStimREPLACEch10 = scatter3(bpLFEFStimREPLACEML, bpLFEFStimREPLACEAP, bpLFEFStimREPLACEdepth + 3100, dot_size, sacc_no, 'filled');
bpLFEFStimREPLACEch09 = scatter3(bpLFEFStimREPLACEML, bpLFEFStimREPLACEAP, bpLFEFStimREPLACEdepth + 2800, dot_size, sacc_no, 'filled');
bpLFEFStimREPLACEch08 = scatter3(bpLFEFStimREPLACEML, bpLFEFStimREPLACEAP, bpLFEFStimREPLACEdepth + 2500, dot_size, sacc_no, 'filled');
bpLFEFStimREPLACEch07 = scatter3(bpLFEFStimREPLACEML, bpLFEFStimREPLACEAP, bpLFEFStimREPLACEdepth + 2100, dot_size, sacc_no, 'filled');
bpLFEFStimREPLACEch06 = scatter3(bpLFEFStimREPLACEML, bpLFEFStimREPLACEAP, bpLFEFStimREPLACEdepth + 1800, dot_size, sacc_no, 'filled');
bpLFEFStimREPLACEch05 = scatter3(bpLFEFStimREPLACEML, bpLFEFStimREPLACEAP, bpLFEFStimREPLACEdepth + 1200, dot_size, sacc_no, 'filled');
bpLFEFStimREPLACEch04 = scatter3(bpLFEFStimREPLACEML, bpLFEFStimREPLACEAP, bpLFEFStimREPLACEdepth +  900, dot_size, sacc_no, 'filled');
bpLFEFStimREPLACEch03 = scatter3(bpLFEFStimREPLACEML, bpLFEFStimREPLACEAP, bpLFEFStimREPLACEdepth +  600, dot_size, sacc_no, 'filled');
bpLFEFStimREPLACEch02 = scatter3(bpLFEFStimREPLACEML, bpLFEFStimREPLACEAP, bpLFEFStimREPLACEdepth +  300, dot_size, sacc_no, 'filled');
bpLFEFStimREPLACEch01 = scatter3(bpLFEFStimREPLACEML, bpLFEFStimREPLACEAP, bpLFEFStimREPLACEdepth +    0, dot_size, sacc_no, 'filled');