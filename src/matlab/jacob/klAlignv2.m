function [outMat,currZero] = klAlignv2(inCell,indVect)


% outMat = inCell{1,1};
maxZero = max(indVect);
allLengths = cellfun(@length,inCell);
maxLen = max(allLengths);
currZero = maxZero;

outMat = nan(size(inCell,1),maxZero+maxLen);
% Loop trough the input cell
for ir = 1:size(inCell,1),
%     if mod(ir,1000) == 0,
%         fprintf('Aligning row %d of %d\n',ir,size(inCell,1));
%     end
    outMat(ir,(maxZero-indVect(ir)+1):(maxZero+allLengths(ir)-indVect(ir))) = inCell{ir};
end
while sum(isnan(outMat(:,end))) == size(outMat,1),
    outMat = outMat(:,1:(end-1));
end
