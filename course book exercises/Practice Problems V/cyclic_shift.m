function a = cyclic_shift(s,shifts)
ii = 1;
a=s;
for n=1:length(s)
    a(n)=s(n)+shifts(ii);
    ii = ii+1;
    if ii>length(shifts); ii = 1; end
end
a = char(a);
end

    
    