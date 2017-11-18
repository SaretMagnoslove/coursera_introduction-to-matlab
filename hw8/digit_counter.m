function [dig_num] = digit_counter(filename)
dig_num = 0;
fid = fopen(filename,'rt');
if fid < 0
    dig_num = -1;return
end
oneline = fgets(fid);
while ischar(oneline)
    for ii=1:length(oneline)
        t = oneline(ii);
        if t=='0'||t=='1'||t=='2'||t=='3'||t=='4'||t=='5'||t=='6'...
                ||t=='7'||t=='8'||t=='9'
            dig_num = dig_num+1;
        end
    end
    oneline = fgets(fid);
end
fclose(fid);
end
            
    
    