function pay = fare(distance,age)
distance = round(distance);
if distance<=1 
    pay = 2;
elseif distance<=10 
    pay = 2+(0.25*(distance-1));
end
if distance>=11 
    pay = 2+2.25+(0.1*(distance-10));
end
if age<=18 || age>=60
    pay = pay-(pay*20/100);
end


    