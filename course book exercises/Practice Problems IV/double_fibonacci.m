function A = double_fibonacci(M,N)
A(1,1) = 1;
A(1,2) = 1;
for ii=1:M
    if ii>=2
        A(ii,1)=A(ii-1,2);A(ii,2)=A(ii-1,3);
    end
for jj=3:N
    A(ii,jj) = A(ii,jj-2)+A(ii,jj-1);
end
end
end
   