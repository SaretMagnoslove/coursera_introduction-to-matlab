function [value] = coin_value(c_diam,c_mass)
less = 0.95;
more = 1.05;
val = [0.01,0.05,0.1,0.25,0.5,1];
diam = [19.05,21.21,17.91,24.26,30.61,26.5];
mass = [2.5,5,2.5,6.25,11.34,8.1];
value = 0;
for ii = 1:6
    if c_diam>diam(ii)*less&&c_diam<diam(ii)*more&&...
            c_mass>mass(ii)*less&&c_mass<mass(ii)*more
        value = val(ii);
    end
end
end

            
