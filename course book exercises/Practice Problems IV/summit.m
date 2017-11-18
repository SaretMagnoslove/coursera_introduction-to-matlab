function [a]= summit (x,y,z)
a = 0;
for ii=1:length(x)
    a = a + x(ii)^2 + y(ii)*z(ii);
end
