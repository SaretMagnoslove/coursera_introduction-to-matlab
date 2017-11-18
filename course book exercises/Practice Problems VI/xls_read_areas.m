function [names,areas] = xls_read_areas(filename)
[num,txt,raw] = xlsread(filename);
for ii = 1:length(txt)
    names{ii,1} = txt{ii};
    areas(ii,1) = num(ii);
end