function nla = nat(x,N)
nla = sum((-1).^(2:N+1).*(x-1).^(1:N)./(1:N));
end