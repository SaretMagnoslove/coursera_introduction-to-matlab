function [M,v] = rand_test(n)
rng(0);
v = rand(n^2,1);
rng(0);
M = rand(n,n);
end