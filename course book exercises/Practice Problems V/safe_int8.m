function B = safe_int8(A)
if sum(sum(int8(A)~=A))~=0
    B = A;
else
    B = int8(A);
end
end