function kern = klGetKern(varargin)

% Set defaults
type        = 'psp';
tg          = 1;     % From Pouget et al 2005 (in turn from Sayer et al 1990)
td          = 20;    % From Pouget et al 2005 (in turn from Sayer et al 1990)
normalize   = 1;

varStrInd = find(cellfun('isclass',varargin,'char'));
varStr = varargin(varStrInd);
for iv = 1:length(varStrInd),
    switch varargin{varStrInd(iv)}
        case {'width'}
            td = varargin{varStrInd(iv)+1};
        case 'norm'
            normalize = varargin{varStrInd(iv)+1};
        case 'type'
            type = varargin{varStrInd(iv)+1};
    end
end


switch type
    case 'square'
        kern = ones(1,td);
    case 'gauss'
        mu = 0;
        sd = td; N = sd*5; t=-N:N;
%         kern = (1/sqrt(2*pi*sd.^2))*exp(-t.^2/(2*sd.^2));
        kern = klMakeGauss(sd,'-m',mu,'-x',t);
    case 'psp'
        pspTime = 1:(4*td);
        kern = [zeros(1,length(pspTime)),(1-exp(-pspTime./tg)).*exp(-pspTime./td)];
    otherwise
        % Default to gaussian
        sd = td; N = sd*5; t=-N:N;
        kern = (1/sqrt(2*pi*sd.^2))*exp(-t.^2/(2*sd.^2));
end

if normalize,
    kern = kern/sum(kern);
end