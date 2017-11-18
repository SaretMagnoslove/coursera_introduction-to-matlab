function sum_tf = sum3and5muls(n)
threes = 3:3:n;
fives = 5:5:n;
both = 15:15:n;
sum_tf = sum(threes)+sum(fives)-sum(both);
end
