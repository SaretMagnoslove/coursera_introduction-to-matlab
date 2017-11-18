function [cv] = logipack(L)
cv = cell(1,size(L,1));
for i=1:size(L,1)
    cv{i} = find(L(i,:));
    if isempty(cv{i}); cv{i}=[];end
end
end





