function fact = rec_fac(n)
if n==1;fact=1;else
fact = n * rec_fac(n-1);
end
end