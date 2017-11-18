function write_array_bin(A,filename)
fid = fopen(filename,'w+');
if fid < 0
fprintf('error opening file\n');
return;
end
fwrite(fid,A,'double');
fclose(fid);