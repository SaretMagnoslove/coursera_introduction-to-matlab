function [s,m,l] = sort3(vector)
if vector(1)<=vector(2) && vector(1)<=vector(3)
    s = vector(1);
elseif vector(2)<=vector(1) && vector(2)<=vector(3)
    s = vector(2);
else
    s = vector(3);
end
if (vector(1)<=vector(2) && vector(1)>=vector(3)) ||... 
    (vector(1)>=vector(2) && vector(1)<=vector(3))
    m = vector(1);
elseif (vector(2)<=vector(1) && vector(2)>=vector(3)) ||...
        (vector(2)>=vector(1) && vector(2)<=vector(3))
    m = vector(2);
else
    m = vector(3);
end
if vector(1)>=vector(2) && vector(1)>=vector(3)
    l = vector(1);
elseif vector(2)>=vector(1) && vector(2)>=vector(3)
    l = vector(2);
else
    l = vector(3);
end

    
    