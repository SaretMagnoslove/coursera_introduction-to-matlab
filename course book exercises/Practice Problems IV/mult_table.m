function [A] = mult_table(n)
A = zeros(n);
for jj=1:n
    for ii=1:n
        A(ii,jj) = ii*jj;
    end
end
end
