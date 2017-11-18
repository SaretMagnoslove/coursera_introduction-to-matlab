function day_of_month(ordinal,day,month)
if fix(ordinal)~=ordinal||fix(day)~=day||fix(month)~=month
    fprintf('Inputs must be whole numbers\n');return
end
out_of_range=false;
if ordinal>5||ordinal<1
    fprintf('1st argument must be in the range 1 to 5\n');out_of_range=true;
end
if day<1||day>7
    fprintf('2nd argument must be in the range 1 to 7\n');out_of_range=true;
end
if month<1||month>12
    fprintf('3rd argument must be in the range 1 to 12\n');out_of_range=true;
end
if out_of_range==true;return;end
o = {'first','second','third','forth','fifth'};
d = {'sunday','monday','tuesday','wednesday','thuesday','friday'...
    ,'saturday'};
m = {'jan','feb','mar','apr','may','jun','jul','aug'...
    ,'sep','oct','nov','dec'};
fprintf ('%s %s of %s\n',o{ordinal},d{day},m{month});
end

