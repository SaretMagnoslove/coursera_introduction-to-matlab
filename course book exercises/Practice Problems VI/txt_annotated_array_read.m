function [A] = txt_annotated_array_read(filename)
fid = fopen(filename,'rt');
if fid<0; error ('could not open file');end
line_number=1;
one_line{line_number}=fgets(fid);
while ischar(one_line{line_number})
    line_number=line_number+1;
    one_line{line_number}=fgets(fid);
end
n_lines=line_number-2;
n = 1;
for ii=4:n_lines
    A(n,1)=sscanf(one_line{ii}(9:13),'%f');
    A(n,2)=sscanf(one_line{ii}(16:20),'%f');
    A(n,3)=sscanf(one_line{ii}(23:27),'%f');
    A(n,4)=sscanf(one_line{ii}(30:34),'%f');
    A(n,5)=sscanf(one_line{ii}(37:41),'%f');
    A(n,6)=sscanf(one_line{ii}(44:48),'%f');
    A(n,7)=sscanf(one_line{ii}(51:55),'%f');
    A(n,8)=sscanf(one_line{ii}(58:62),'%f');
    A(n,9)=sscanf(one_line{ii}(65:69),'%f');
    A(n,10)=sscanf(one_line{ii}(72:76),'%f');
    
    n = n+1;
end
A = A(:,2:2:10);
end

