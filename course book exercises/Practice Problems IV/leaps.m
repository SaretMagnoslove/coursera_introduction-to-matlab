function n = leaps(d)
n = 0; D = 0; % in case no steps
while D<d
    n = n + 1;
    D = D + n;
end
end