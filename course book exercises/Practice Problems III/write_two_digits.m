function write_two_digits(number)
if fix(number)~=number||number<-99||number>99
    fprintf('Input must be an integer from -99 to +99.\n');return
end
if number<0; fprintf('minus ');number=abs(number);end
if number>-20&&number<20
    switch number
        case 0
            fprintf('zero\n')
        case 1
            fprintf('one\n')
        case 2
            fprintf('two\n')
        case 3
            fprintf('three\n')
        case 4
            fprintf('four\n')
        case 5
            fprintf('five\n')
        case 6
            fprintf('six\n')
        case 7 
            fprintf('seven\n')
        case 8
            fprintf('eight\n')
        case 9
            fprintf('nine\n')
        case 10
            fprintf('ten\n')
        case 11
            fprintf('eleven\n')
        case 12
            fprintf('twelve\n')
        case 13
            fprintf('thirteen\n')
        case 14
            fprintf('fourteen\n')
        case 15
            fprintf('fifteen\n')
        case 16
            fprintf('sixteen\n')
        case 17
            fprintf('seventeen\n')
        case 18
            fprintf('eightteen\n')
        case 19
            fprintf('nineteen\n')
    end
end
if number>=20||number<-20
    tens = fix(number/10);
    switch tens
        case 2
            fprintf('twenty-')
        case 3
            fprintf('thirty-')
        case 4
            fprintf('fourty-')
        case 5
            fprintf('fifty-')
        case 6
            fprintf('sixty-')
        case 7
            fprintf('seventy-')
        case 8
            fprintf('eightty-')
        case 9
            fprintf('ninety-')
    end
    ones = rem(number,10);
    switch ones
        case 1
            fprintf('one\n')
        case 2
            fprintf('two\n')
        case 3
            fprintf('three\n')
        case 4
            fprintf('four\n')
        case 5
            fprintf('five\n')
        case 6
            fprintf('six\n')
        case 7 
            fprintf('seven\n')
        case 8
            fprintf('eight\n')
        case 9
            fprintf('nine\n')
    end
end

        
    
          
    
    
