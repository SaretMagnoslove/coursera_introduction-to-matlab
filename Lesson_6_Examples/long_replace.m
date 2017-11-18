for ii = 1:size(A,1)
    for jj = 1:size(A,2)
        if A(ii,jj)<5
            A(ii,jj)=sqrt(A(ii,jj));
        else
            continue
        end
    end
end
