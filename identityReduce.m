function identityReduce(key, intermValueIter, outKVStore)
    while hasnext(intermValueIter)
        value = getnext(intermValueIter);
        add(outKVStore, key, value);
    end
end