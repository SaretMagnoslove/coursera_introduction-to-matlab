function index = binary_search_recursive ...
    (vector,target,first,last)
%BINARY_SEARCH_RECURSIVE
% BINARY_SEARCH_RECURSIVE(VECTOR,TARGET,FIRST,LAST)
% returns an index for which TARGET == VECTOR(index)
% or -1, if TARGET not found in VECTOR(FIRST:LAST).

mid = fix( (first + last)/2 );
if ~(first <= last) % If first and last out of order..
    index = -1; % ..then target not on the list!
elseif target == vector(mid)
    index = mid; % found it!
elseif target < vector(mid)
    index = binary_search_recursive ...
        (vector,target,first, mid-1);
else
    index = binary_search_recursive ...
        (vector,target,mid+1, last);
end