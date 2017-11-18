function d = rgcd(x,y)
a = max([x y]);
b = min([x y]);
if b == 0
d = a;
else
d = rgcd(b,rem(a,b));
end