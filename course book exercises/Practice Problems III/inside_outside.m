function inside_outside(a,b,c)
if (b>=a&&b<=c) || (b>=c&&b<=a)
    fprintf('inside\n');
else
    fprintf('outside\n');
end
    