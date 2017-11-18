function [a] = is_between(x,y,z)
a = true;
for ii=1:length(y)
   if y(ii)<x(ii) && y(ii)<z(ii) ||  y(ii)>x(ii) && y(ii)>z(ii)...
           || y(ii)==x(ii)||y(ii)==z(ii)
       a = false;break
   end
end
end

   