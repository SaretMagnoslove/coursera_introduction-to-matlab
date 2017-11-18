function [A] = even_log(r,c)
n = 1:r;
m = 1:c;
N = (n/2==fix(n/2));
M = (m/2==fix(m/2));
A(N,M)=1;
end