function txt_annotated_array_write(filename,A)
fid = fopen(filename,'w+t');
for ii=1:size(A,2)
    fprintf(fid,'____________');
end
fprintf(fid,'\n');
fprintf(fid,'    ');
for ii=1:size(A,2)
    fprintf(fid,'|  col  %d  |',ii);
end
fprintf(fid,'\n');
for ii=1:size(A,2)
    fprintf(fid,'------------');
end
fprintf(fid,'\n');
for ii=1:size(A,1)
    fprintf(fid,'Row %d |',ii);
    for jj=1:size(A,2)
        fprintf(fid,'|%4.3f|',ii,A(ii,jj));
    end
    fprintf(fid,'\n');
end
for ii=1:size(A,2)
    fprintf(fid,'------------');
end
end




