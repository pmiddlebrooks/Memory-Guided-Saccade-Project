%
% bpStimREPLACE
%

% variables
bpStimREPLACEdepth = -8700;
bpStimREPLACEAP = -4;
bpStimREPLACEML = -3.5;

% session depth + coordinates
bpStimREPLACEtop = [bpStimREPLACEML, bpStimREPLACEAP, 0];
bpStimREPLACEbottom = [bpStimREPLACEML, bpStimREPLACEAP, bpStimREPLACEdepth];
bpStimREPLACE = [bpStimREPLACEtop;bpStimREPLACEbottom];
plot3(bpStimREPLACE(:,1),bpStimREPLACE(:,2),bpStimREPLACE(:,3), 'r')

bpStimREPLACEch01 = scatter3(bpStimREPLACEML, bpStimREPLACEAP, bpStimREPLACEdepth +    0, dot_size, 'r', 'filled');