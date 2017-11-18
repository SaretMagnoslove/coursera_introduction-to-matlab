function [A] = zero_middle(A)
[n,m] = size(A);
A (ceil(n/2),ceil(m/2))=0;
end