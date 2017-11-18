function [A] = alternate(n,m)
A = zeros (n,m);
row =1:2:n;
col=1:2:m;
A(row,col)=1;
row =2:2:n;
col=2:2:m;
A(row,col)=1;
end
