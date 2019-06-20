function countMapper2(out, info, intermKV)
% Counts unique airline carrier names in each chunk.
global g;
[x,y]=size(out.Key);

for i=1:x
m=[];
m=out.Value{i};
dista=(sum((g-m).^2).^0.5);

add(intermKV, out.Key{i},dista);
end
%add(intermKV,out,dista);

end