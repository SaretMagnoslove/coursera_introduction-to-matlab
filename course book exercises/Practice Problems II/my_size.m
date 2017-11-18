function [s] = my_size(A)
s = size(A);
fprintf ('This is a %d-by-%d matrix\n',size(A,1),size(A,2));
end
