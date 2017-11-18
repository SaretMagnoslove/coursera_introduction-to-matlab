function two_rows(A)
if ismatrix(A) && size(A,1)==2
    disp(A);return
else
    fprintf('I must have two dimensions and two rows!\n');
    A = zeros(size(A));
    disp(A);
end
end
    
    