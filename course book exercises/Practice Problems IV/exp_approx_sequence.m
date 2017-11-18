function [v,max_ns] = exp_approx_sequence(u)
v = zeros(1,length(u));
max_ns = zeros(1,length(u));
for ii=1:length(u)
    n = 1;
    temp = 1;
    while abs(temp)>1/10000
        v(ii) = v(ii)+temp;
        temp = u(ii)^n/factorial(n);
        n = n+1;
    end
    max_ns(ii) = n;
end
end
