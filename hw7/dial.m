function num = dial(chars)
num = zeros(1,length(chars));
for i = 1:length(chars)
    if chars(i)=='A'||chars(i)=='B'||chars(i)=='C'||chars(i)=='2'
        n = 2;
    elseif chars(i)=='D'||chars(i)=='E'||chars(i)=='F'||chars(i)=='3'
        n = 3;
    elseif chars(i)=='G'||chars(i)=='H'||chars(i)=='I'||chars(i)=='4'
        n = 4;
    elseif chars(i)=='J'||chars(i)=='K'||chars(i)=='L'||chars(i)=='5'
        n = 5;
    elseif chars(i)=='M'||chars(i)=='N'||chars(i)=='O'||chars(i)=='6'
        n = 6;
    elseif chars(i)=='P'||chars(i)=='Q'||chars(i)=='R'||chars(i)=='7'...
            || chars(i)=='S'
        n = 7;
    elseif chars(i)=='T'||chars(i)=='U'||chars(i)=='V'||chars(i)=='8'
        n = 8;
    elseif chars(i)=='W'||chars(i)=='X'||chars(i)=='Y'||chars(i)=='9'...
            || chars(i)=='Z'
        n = 9;
    elseif chars(i) =='1';n=1;
    elseif chars(i)=='0';n=0;
    else
        num = uint64(0);return
    end
    num(i)=n;
end
    num = v2s(num);
    num = uint64(num);
end

        