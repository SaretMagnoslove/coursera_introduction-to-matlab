function [n] = day_counter(year)
if ~isscalar(year)||year<1776||year>2016||year~=floor(year);return;end
months = [31 28 31 30 31 30 31 31 30 31 30 31];
start = 1776;                                       
y = year - start; 
ndays = y*365 + ceil(y/4) - floor((year-1)/100) + floor(start/100)...
    + floor((year-1)/2000);
if mod(year,4) == 0 && (mod(year,100) ~= 0 || mod(year,400) == 0)
        months(2) = 29;
end
months = [0 cumsum(months(1:end-1))];
n = sum(mod(ndays+months,7)==0);
end


    
