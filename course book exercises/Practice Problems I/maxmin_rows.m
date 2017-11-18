function [ma,mi] = maxmin_rows(A)
ma = (max(A,[],2))';
mi = (min(A,[],2))';
end