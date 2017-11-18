function [v]=vectflip2(v)
if length(v)~=1
    v = [v(end) vectflip2(v(1:end-1))];
end
end