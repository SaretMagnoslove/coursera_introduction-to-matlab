function sca = v2s(vec)
sca = 0;
for i = 1:length(vec)
    temp = vec(end-(i-1));
    sca = sca + temp*10^(i-1);
end

    