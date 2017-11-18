function v = selection_sort(v)

%SELECTION_SORT sort in ascending order
% A = SELECTION_SORT(V) sorts vector V in
% ascending order and returns it in A.
% The method used is selection sort.
for m = 1:length(v)-1
    m_min = m;
    for n = m+1:length(v)
        if v(n) < v(m_min)
            m_min = n;
        end
        if m_min ~= m
            temp = v(m);
            v(m) = v(m_min);
            v(m_min) = temp;
        end
    end