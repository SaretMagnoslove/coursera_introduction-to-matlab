function [T] = unequal4_expression(v)
T = ~(v(1)==v(2)&&v(2)==v(3)&&v(3)==v(4));
end