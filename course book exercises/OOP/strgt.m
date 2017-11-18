function a = strgt(s1,s2)
% a == 1 when s1 > s2
% a == 0 otherwise
a = 0;
s1 = upper(s1);
s2 = upper(s2);
for ii = 1 : min(length(s1),length(s2))
    if s1(ii) > s2(ii)
        a = 1;
        return;
    elseif s1(ii) < s2(ii)
        return;
    end
end
if length(s1) > length(s2)
    a = 1;
end
end