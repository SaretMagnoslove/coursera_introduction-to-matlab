function B = safe_int(A)
if sum(sum(int8(A)~=A))==0;B = int8(A);
elseif sum(sum(int16(A)~=A))==0;B = int16(A);
elseif sum(sum(int32(A)~=A))==0;B = int32(A);
elseif sum(sum(int64(A)~=A))==0;B = int64(A);
else
    B=A;
end
end




