function [val] = bolt_check(len)
less = 0.98;
more = 1.02;
nlength = [3/8, 1/2, 5/8, 3/4, 1];
val = 0;
for ii=1:5
    if len>=nlength(ii)*less && len<=nlength(ii)*more
        val = nlength(ii);
    end
end
end

