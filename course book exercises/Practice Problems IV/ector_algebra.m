function [a] = ector_algebra (x,y,z)
for ii=1:length(x)
    a(ii)=x(ii)^2+y(ii)*z(ii);
end
end
