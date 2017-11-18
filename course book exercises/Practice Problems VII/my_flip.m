function [s]=my_flip(s)
s = num2str(s)-'0';
s = vectflip(s);
n = 1;
temp=0;
for ii=0:length(s)-1
    temp = temp+s(end-ii)*n;n=n*10;
end
s = temp;
end


