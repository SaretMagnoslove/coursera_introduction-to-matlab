function [names,areas] = xls_areas_read_w_headings(filename)
[~,~,raw] = xlsread(filename);
n=1;
for ii=1:size(raw,1)
    for jj=1:size(raw,2)
        if ischar(raw{ii,jj}) && isnumeric(raw{ii,jj+1})...
                && ~isnan(raw{ii,jj+1}) && ~isempty(raw{ii,jj+1})
            names{n,1}=raw{ii,jj};
            areas{n,1}=raw{ii,jj+1};
            n=n+1;
        end
    end
end
end

            

