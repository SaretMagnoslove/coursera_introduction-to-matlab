function prec = zero_stat(A)
num_ones = sum(sum(A));
prec = 100-(num_ones/(size(A,1)*size(A,2))*100);
end
