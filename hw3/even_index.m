function Meven = even_index(M)
m = 2:2:size(M,1);
n = 2:2:size(M,2);
Meven = M(m,n);
end