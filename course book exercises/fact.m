function f = fact(n)
if ( ~isscalar(n) || n < 1 || n ~= fix(n))
error('n must be a positive integer!');
end
if n == 1
f = 1;
else
f = n * fact(n-1);
end