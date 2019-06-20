clc
clear all
imgds = imageDatastore('hdfs://localhost:9000/FACEIMAGE/FaceAll_cropped');
mapreducer(0);

seqds = mapreduce(imgds,@identityMap,@identityReduce);
out = mapreduce(seqds,@countMapper1,@reducefun);

x= readall(out);

%writetable(x,'D:\SEM_6\featureData.xlsx');
I=imread('D:\SEM_6\sub0073.jpg');
subplot(3,3,1)
imshow(I);
title('Query');
J = imresize(I,[64  64]);
[QfeatureVector,hogVisualization] = extractHOGFeatures(J);
% % features = extractLBPFeatures(J);
% % numNeighbors = 8;
% % numBins = numNeighbors*(numNeighbors-1)+3;
% % lbpCellHists = reshape(features,numBins,[]);
% % lbpCellHists = bsxfun(@rdivide,lbpCellHists,sum(lbpCellHists));
% % lbpFeatures = reshape(lbpCellHists,1,[]);
global  g;
g= QfeatureVector;

out2 = mapreduce(out,@countMapper2,@reducefun2);

T=readall(out2);
t=sortrows(T,2)
t.Key{1};

for i=1:5
    %figure;
    idx=find(strcmp(imgds.Files,t.Key{i}));
    subplot(3,3,i+1);
    imshow(readimage(imgds, idx), 'InitialMagnification','fit');
    
    %imshow(t.Key{i});
end

