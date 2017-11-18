function [sine,avarage] = sindeg(deg)
degrad = deg*(pi/180);
sine = sin(degrad);
avarage = mean(sine(:));
end

