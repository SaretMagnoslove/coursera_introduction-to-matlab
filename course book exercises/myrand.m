function [A,s,m] = myrand(low,high,n,m)
%MYRAND(low,high,n,m) generate a n*m matrix of values between LOW and HIGH
A = (high-low)*rand(n,m)+low;
s = sum(A(:));
m = mean(A(:));
end
