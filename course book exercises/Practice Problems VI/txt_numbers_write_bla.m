function txt_numbers_write_bla(filename,A)
fid = fopen(filename,'w+t');
if fid<0
    error('error opening file')
end
for ii=1:size(A,1)
    fprintf(fid,'%.3f,',A(ii,1:end-1));
    fprintf(fid,'%.3f\n',A(ii,end));
end
fclose(fid);
end
