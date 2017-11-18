function As = sparse_array_struct (A)
[ii,jj] = find(A);
for k=1:length(ii)
    As(k).row=ii(k);
    As(k).col=jj(k);
    As(k).val=A(ii(k),jj(k));
end
end