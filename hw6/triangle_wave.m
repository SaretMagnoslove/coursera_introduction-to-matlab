function sums_vector = triangle_wave(n)
d = 4*pi/1000;
sum_temp = 0;
sums_vector = [];
for t = 0:d:4*pi
    for k = 0:n
        temp = ((-1)^k*sin((2*k+1)*t))/(2*k+1)^2;
        sum_temp = sum_temp+temp;
    end
    sums_vector = [sums_vector sum_temp];
    sum_temp = 0;
end
    