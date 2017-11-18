function [A] = cancel_middle(B,k)
A = B;
[n,m] = size(A);
margin_r = n-floor(k/2);
margin_c = m-floor(k/2);
A (1+(n-margin_r):end-(n-margin_r),1+(m-margin_c):end-(m-margin_c)) = 0;
end