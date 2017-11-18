function f = fibo(n)
if ( ~isscalar(n) || n < 1 || n ~= fix(n))
error('n must be a positive integer!');
end
if n <= 2
f = 1;
else
f = fibo(n-2) + fibo(n-1);
end