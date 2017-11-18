function diff = day_diff(month1,day1,month2,day2)
mon = [31 28 31 30 31 30 31 31 30 31 30 31];
if isscalar(month1)==0 || isscalar(month2)==0 || isscalar(day1)...
        ==0 || isscalar(day2)==0
    diff = -1;
elseif rem(month1,1)~=0....
    || rem(month2,1)~=0 || rem(day1,1)~=0 || rem(day2,1)~=0
diff =  -1;
elseif month1>12 || month1<1 || month2>12 || month2<1 || day1>mon(month1)...
        || day2>mon(month2) || day1<1 || day2<1 
            diff = -1;
elseif month1 == month2 && day2>day1
    diff = day2-day1;
elseif month1 == month2 && day1>day2
    diff = day1-day2;
elseif month2>month1
    diff = sum (mon(month1:month2))-(day1+(mon(month2)-day2));
else
    diff = sum (mon(month2:month1))-(day2+(mon(month1)-day1));
end

    
    