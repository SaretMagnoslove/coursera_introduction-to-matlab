function index = sequential_search ...
(vector,target,first,last)
%SEQUENTIAL_SEARCH
% SEQUENTIAL_SEARCH(VECTOR,TARGET,FIRST,LAST) returns
% smallest index for which TARGET == VECTOR(index) or
% -1, if TARGET not found within VECTOR(FIRST:LAST).
found = false; % Assume the target is not in vector
for n = first:last
if target == vector(n)
found = true; % We found it...
break; % so we quit looking for it!
end
end
index = n;
if ~found
index = -1;
end