function [table summa] = multable(n, m)

%CHATACTER generates attributes 
% MEAN and MAX of f numbers of rolls of best 3 of n d6

if nargin < 1
    error('must have at least one input argument');
endif nargin < 2
    m = n;
end

table = (1:n)' * (1:m);

if nargout == 2
    summa = sum(table(:));
end

