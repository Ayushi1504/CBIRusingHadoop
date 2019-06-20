function reducefun2(key, intermValueIter, outKVStore)
   minVal = +inf;
while hasnext(intermValueIter)
   minVal = min(getnext(intermValueIter), minVal);
end
my=struct('key',key,'minimumvalue',minVal);
add(outKVStore,key,minVal);
end