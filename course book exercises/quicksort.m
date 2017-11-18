function v = quicksort(v)
% QUICKSORT sort in ascending order
% Uses vectorized operations and
% logical variables. The method
% used is quicksort.

% Base case (empty or singleton)
if length(v)<=1, return, end

% Recursive case
less = v<v(1);
smaller = v(less);
remainder = v(~less);
remainder = remainder(2:end);
left = quicksort(smaller);
right = quicksort(remainder);
v = [left v(1) right];