function summ = digit_sum(s)
if s==0;summ=0;else; summ=rem(s,10)+digit_sum(fix(s/10));end
end
    