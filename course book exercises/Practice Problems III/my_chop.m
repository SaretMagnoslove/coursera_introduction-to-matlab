function [a,b,c] = my_chop(v)
if sum(sum(size(v)==[3,1]))~=2
    a=0;b=0;c=0;
    fprintf ('Invalid input!\n');return
else
    a = v(1,1);b=v(2,1);c=v(3,1);
end
end
    