function [mini,maxi] = minmax(A)
mini = min(min(A));
maxi = max(max(A));
fprintf ('The minimum of the matrix is %.2f\n',mini)
fprintf ('The maximum of the matrix is %.2f\n',maxi)
end