function month = year2016(date)
if ~isscalar(date) || date<1 || date>12 || date~=floor(date)
    month = [];
    return
end
num_days = [31 29 31 30 31 30 31 31 30 31 30 31];
name_mon = {'January'; 'February'; 'March'; 'April'; 'May'; 'June'; ...
'July'; 'August'; 'September'; 'October'; 'November'; 'December'};
name_days = {'Sun'; 'Mon'; 'Tue'; 'Wed'; 'Thu'; 'Fri'; 'Sat'};
start = 4;
start = start+sum(num_days(1:date-1));
for i = 1:num_days(date)
    month(i).month = name_mon{date};
    month(i).date = i;
    month(i).day = name_days{rem(start+i,7)+1};
end
end



