function [A] = even_indices(n,m)
A(n,m)=0;
A(2:2:end,2:2:end)=1;
end
