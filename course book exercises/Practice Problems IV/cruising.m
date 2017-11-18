function A = cruising(N,d)
for jj = 1:N
    ii = 1;
    A(ii,jj) = randn;
    while abs(A(ii,jj)) < d
        ii = ii + 1;
        A(ii,jj) = randn;
    end
end
 A = A';
end