function v = merge_sort(v)
% MERGE_SORT sort in ascending order
% A = MERGE_SORT(V) puts the elements
% of the row vector V into ascending
% order in the row vector A. The
% algorithm used is the merge sort.

N = length(v);
if N == 1, return; % already sorted
else
    mid = fix(N/2);
    v1 = merge_sort(v(1:mid));
    v2 = merge_sort(v(mid+1:end));
    v = merge_sorted_lists(v1,v2);
end