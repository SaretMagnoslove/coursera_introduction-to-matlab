function [num_seg,num_pole] = fence(lng,seg)
num_seg = ceil(lng/seg);
num_pole = num_seg+1;
end
