function A=txt_numbers_read_bla(filename)
fid = fopen(filename,'rt');
if fid<0; error ('could not open file');end
line_number=1;
one_line{line_number}=fgets(fid);
while ischar(one_line{line_number})
    line_number=line_number+1;
    one_line{line_number}=fgets(fid);
end
n_lines=line_number-1;
for ii=1:n_lines
    A(ii,:)=sscanf(one_line{ii},'%f,');
end
end
    
