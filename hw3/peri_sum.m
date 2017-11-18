function total_sum = peri_sum(A)
first_row = sum (A(1,:));
last_row = sum (A(end,:));
first_colomn = sum (A(2:end-1,1));
last_colomn = sum (A(2:end-1,end));
total_sum = first_row+last_row+first_colomn+last_colomn;
end

