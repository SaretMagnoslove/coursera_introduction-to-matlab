function [v] = sort3(a,b,c)
temp = [a,b,c];
v(1) = min(temp);
v(3) = max(temp);
v(2) = sum(temp)-v(1)-v(3);
end
