function Ac = sparse_array_cell (A)
[row,col] = find(A);
for ii=1:length(row)
    Ac{ii,1}=int16(row(ii));
    Ac{ii,2}=int16(col(ii));
    Ac{ii,3}=A(row(ii),col(ii));
end
end
