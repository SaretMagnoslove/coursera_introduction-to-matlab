function [col_means,row_means,A] = bin_numbers_stats_read (filename)
fid = fopen(filename,'r');
if fid<0; error('file could not be open');end
dims = fread(fid,2,'uint16');
switch nargout
    case 2
        col_means = fread(fid,dims(1),'double');
        row_means = fread(fid,dims(2),'double');
    case 3
        col_means = fread(fid,dims(2),'double')';
        row_means = fread(fid,dims(1),'double');
        A = fread(fid,[dims(1),dims(2)],'double');
end
end