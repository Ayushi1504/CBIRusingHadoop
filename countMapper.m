function countMapper(data, info, intermKV)
[x,y]=size(data.Key);
for i=1:x
I=data.Value{i};
J = imresize(I,[64  64]);
features = extractLBPFeatures(J);
numNeighbors = 8;
numBins = numNeighbors*(numNeighbors-1)+3;
lbpCellHists = reshape(features,numBins,[]);
lbpCellHists = bsxfun(@rdivide,lbpCellHists,sum(lbpCellHists));
lbpFeatures = reshape(lbpCellHists,1,[])
add(intermKV, data.Key{i},lbpFeatures);
end
end