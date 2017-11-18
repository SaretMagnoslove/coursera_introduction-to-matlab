function p = poly_val(c0,c,x)
if isempty(c)==1, p=c0; 
elseif isscalar(c)==1, p=c0+c*x;
else
    if size(c,1)>size(c,2), c=c'; end
    poly=1:length(c); p=c0+sum(c(poly).*x.^poly(poly));
end

    
    