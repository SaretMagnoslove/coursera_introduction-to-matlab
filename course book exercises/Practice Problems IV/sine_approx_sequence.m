function [v,max_ns] = sine_approx_sequence(u)
v = zeros(1,length(u));
max_ns = zeros(1,length(u));
for ii=1:length(u)
    n = 0;
    temp = 0;
    while abs(temp)>1/10000 || temp==0
        v(ii) = v(ii)+temp;
        temp = (-1)^n*u(ii)^(2*n+1)/factorial(2*n+1);
        n = n+1;
    end
    max_ns(ii) = n;
end
end
