function [v]=vectflip(v)
if length(v)~=1
    v = [vectflip(v(2:end)) v(1)];
end
end
      
