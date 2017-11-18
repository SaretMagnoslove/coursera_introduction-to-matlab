function [A] = blocksidx(n,m)
B(1:n,1:m)=0;
B(n+1:2*n,1:m)=1;
 C = flipud(B);
 A = [B C];
end

