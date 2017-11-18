function indexes = small_elements(X)
[n,m] = size(X);
indexes = [];
for jj=1:m
    for ii=1:n
        if X(ii,jj)<ii*jj
            indexes = [indexes;[ii,jj]];
        end
    end
end
end
            
