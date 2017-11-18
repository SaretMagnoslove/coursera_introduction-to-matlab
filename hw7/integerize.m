function small_int = integerize(A)
small_int = 'NONE';
f = {'int8'; 'int16'; 'int32'; 'int64'};
for i = 1:4
    if min(min(A))>=intmin(f{i}) && max(max(A))<=intmax(f{i})
        small_int = f{i}; return
    end
end
end
