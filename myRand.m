function [a,s] = myRand (Low,High)
a = Low+rand(3,4)*(High-Low);
s = SumAllElements(a);
end

function suma = SumAllElements(M)
v = M(:);
suma = sum (v);
end

