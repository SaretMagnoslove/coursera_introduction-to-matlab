function w = flip_it(v)
c = 0:1:size(v,2)-1;
w = v(1,end-c);
end
