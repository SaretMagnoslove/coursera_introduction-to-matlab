function uniform_test(n,bins)
v = hist(rand(1,n),bins);
hist(v,bins/50);
end