function ea = exp_approx(x,N)
temp = zeros(1,N);
for ii=1:N
    temp(ii) = x^ii/factorial(ii);
end
ea = sum(temp)+1;
end

