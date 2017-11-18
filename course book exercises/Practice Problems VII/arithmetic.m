function [summ,diff,proda,rat] = arithmetic(a,b)
if nargin<1; return; end
if nargin<2; b=a; end
summ = sum([a b]);
diff = abs(b-a);
proda = a.*b;
rat = a./b;
end