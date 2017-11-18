function f = fibo2(n)
if ( ~isscalar(n) || n < 1 || n ~= fix(n))
error('n must be a positive integer!');
end
fv = fiboseries(n);
f = fv(n);
end

