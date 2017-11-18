function bin_numbers_write(filename,A)
fid = fopen(filename,'w+');
fwrite(fid,size(A),'uint16')
fwrite(fid,A,'double')
fclose(fid);
end