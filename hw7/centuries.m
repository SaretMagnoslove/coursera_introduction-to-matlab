function [century] = centuries(year)
if ~isscalar(year) || year>3000 || year<=0 || year~=floor(year)
    century = ''; return
end
list ={'I' 'II' 'III' 'IV' 'V' 'VI' 'VII' 'VIII' 'IX' 'X' 'XI' 'XII'...
    'XIII' 'XIV' 'XV' 'XVI' 'XVII' 'XVIII' 'XIX' 'XX' 'XXI' 'XXII'...
    'XXIII' 'XXIV' 'XXV' 'XXVI' 'XXVII' 'XXVIII' 'XXIX' 'XXX'};
if floor(year/100)==(year/100);century = list{year/100};
else
century = list{floor(year/100)+1};
end
end

       
    
       
     
     
     
     

