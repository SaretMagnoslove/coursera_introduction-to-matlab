function [approx_e,k_end] = approximate_e(delta)
k=0;
fac_k = 1;
approx_e = 0;
    while abs(approx_e-exp(1))>delta
    approx_e = approx_e + 1/fac_k;
    k = k+1;
    fac_k = fac_k*k;
    end
k_end = k-1;
end

    
