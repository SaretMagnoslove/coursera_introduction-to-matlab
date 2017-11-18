function [smallest] = smallest_multiple(n)
smallest = uint64(1);
for i=1:n
    smallest = smallest*(i/gcd(smallest,i));
end
if smallest>=intmax('uint64')
    smallest = uint64(0);
end
end
