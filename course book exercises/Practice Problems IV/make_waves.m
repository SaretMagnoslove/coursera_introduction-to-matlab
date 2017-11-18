function A = make_waves(M,N)
for jj=1:N
    for ii=1:N
        A(ii,jj) = sin(2*M*pi/N*jj)*sin(2*M*pi/N*ii);
    end
end        
end