function bin_numbers_stats_write(filename,A)
fid = fopen(filename,'w+');
if fid<0; error('file could not be open');end
fwrite(fid,size(A),'uint16')
fwrite(fid,mean(A,1),'double')
fwrite(fid,mean(A,2),'double')
fwrite(fid,A,'double')
fclose(fid);
end