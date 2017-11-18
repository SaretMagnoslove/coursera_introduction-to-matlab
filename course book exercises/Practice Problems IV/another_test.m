function y = sin2(x)
n = 1 : 100;
c = 2*n-1;
s = (-1).^(n-1);
f = factorial(c);
for i = 1 : length(x)
    y(i) = sum(s .* x(i).^c ./ f);
end