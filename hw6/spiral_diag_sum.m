function sum_diag = spiral_diag_sum(n)
sum_diag = 1;
d = 2;
f = 3;
for rows = 1:(n-1)/2
    temp = sum(f:d:f+3*d);
    f = f+(3*d);
    d = d+2;
    f = f+d;
    sum_diag = sum_diag+temp;
end
    
  
    
