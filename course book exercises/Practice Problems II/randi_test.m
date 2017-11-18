function [v,M] = randi_test(maxi,n)
v = randi(maxi,1,n^2);
M = reshape(v,n,[]);
end