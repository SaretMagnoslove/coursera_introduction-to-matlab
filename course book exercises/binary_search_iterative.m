function index = binary_search_iterative ...
    (vector,target,first,last)
%BINARY_SEARCH_ITERATIVE
% BINARY_SEARCH_ITERATIVE(VECTOR,TARGET,FIRST,LAST)
% returns an index for which TARGET == VECTOR(index)
% or -1, if TARGET not found in VECTOR(FIRST:LAST).

found = false;
while first <= last && ~found
    mid = fix( (first + last) /2 );
    if target < vector(mid)
        last = mid - 1;
    elseif target > vector(mid)
        first = mid + 1 ;
    else
        found = true;
    end
end
if found
    index = mid;
else
    index = -1;
end