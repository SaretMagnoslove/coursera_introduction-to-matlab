function nla = nat_log_approx(x,N)
nla = 0;
for ii=1:N
    nla = nla +(-1)^(ii+1)*(x-1)^ii/ii;
end
end
    
    
    