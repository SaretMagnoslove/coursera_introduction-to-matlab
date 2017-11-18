function A = forward_backward(M,N)
A = zeros(M,N);
for ii=1:2:M
    for jj=1:N
        A(ii,jj)=jj;
    end
end
for ii=2:2:M
    for jj=N:-1:1
        A(ii,jj)=N+1-jj;
    end
end