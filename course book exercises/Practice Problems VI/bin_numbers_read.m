function [A] = bin_numbers_read(filename)
fid = fopen(filename,'r');
if fid<0; error('file could not be open');end
dims = fread(fid,2,'uint16');
values = fread(fid,inf,'double');
A = reshape(values,dims(1),dims(2));
fclose(fid);
end

