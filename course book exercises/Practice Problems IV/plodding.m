function A = plodding(N,d)
for ii = 1:N
jj = 1;
A(ii,jj) = randn;
while abs(A(ii,jj)) < d
jj = jj + 1;
A(ii,jj) = randn;
end
end