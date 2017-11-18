function [product, ind] = max_product(v,n)
l = length(v);
max_pro = 0;
count = 1;
temp_ind = 0;
if l<n, product = 0; ind = -1; return
elseif l == 1 && n == 1
    product = v; ind =1;
else
 while count <= l-(n-1)
        i = count:count+n-1;
        temp_pro = prod(v(i));
        if temp_pro > max_pro, max_pro = temp_pro; temp_ind = count;
        end
        count = count + 1;
end
 product = max_pro;
 ind = temp_ind;
end
 
    
   
    
    
    