function [pf]=prime_fact(n)
for ii=2:sqrt(n)
    if rem(n,ii)==0
        pf = [ii prime_fact(n/ii)];
        return;
    end
    pf=n;
end
end
            