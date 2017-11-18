function [v3] = vector_multiply(v1,v2)
for ii=1:length(v1)
    v3(ii) = v1(ii)*v2(ii);
end
end