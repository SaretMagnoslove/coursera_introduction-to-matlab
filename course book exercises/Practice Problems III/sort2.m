function [v] = sort2(a,b)
if a<=b
    v = [a,b];
else
    v = [b,a];
end
end
