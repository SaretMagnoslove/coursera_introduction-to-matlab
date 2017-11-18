function A = read_array_bin(filename,data_type)
fid = fopen(filename,'r');
if fid < 0
fprintf('error opening file\n');
return;
end
A = fread(fid,inf,data_type);
fclose(fid);