function s2 = odd_shift(s1,shift)
s2=s1;
s2(1:2:end) = s2(1:2:end)+shift;
end
    