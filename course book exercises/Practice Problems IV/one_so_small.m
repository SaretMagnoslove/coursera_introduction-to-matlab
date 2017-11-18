function [a,b,c] = one_so_small
a = rand;b = rand;c = rand;
while a*10>b*c&&b*10>a*c&&c*10>a*b
    a = rand;b = rand;c = rand;
end