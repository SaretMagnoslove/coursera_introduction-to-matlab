function [v_trimmed,trimmings] = trim10(v1,v2)
v_trimmed = v1;
v_trimmed(v1>=v2+10) = v2(v1>=v2+10)+10;
trimmings = v_trimmed-v1;
end
