function A = reverse_diag(n)
A = zeros(n);
idx = n:n-1:n*(n-1)+1;
A(idx)=1;
end
