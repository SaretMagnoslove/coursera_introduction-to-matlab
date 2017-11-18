function fv = fiboseries(n)
if ( ~isscalar(n) || n < 1 || n ~= fix(n))
error('n must be a positive integer!');
end
if n <= 2
fv = ones(1,n);
else
fv = fiboseries(n-1);
fv = [fv fv(n-2)+fv(n-1)];
end

