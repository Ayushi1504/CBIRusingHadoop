function countMapper1(data, info, intermKV)
[x,y]=size(data.Key);
for i=1:x
I=data.Value{i};
J = imresize(I,[64  64]);
[featureVector,hogVisualization] = extractHOGFeatures(J);
% % features = extractLBPFeatures(J);
% % numNeighbors = 8;
% % numBins = numNeighbors*(numNeighbors-1)+3;
% % lbpCellHists = reshape(features,numBins,[]);
% % lbpCellHists = bsxfun(@rdivide,lbpCellHists,sum(lbpCellHists));
% % lbpFeatures = reshape(lbpCellHists,1,[])
add(intermKV, data.Key{i},featureVector);
end
end