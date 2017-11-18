function h_sum = halfsum(A)
[n,m] = size(A);
if n>m
    A = [A,zeros(n,n-m)];
elseif m>n
    A = [zeros(m-n,m); A];
end
h_sum = sum(sum(tril(fliplr(A))));
end
        
 
        
        