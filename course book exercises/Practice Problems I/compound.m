function [networth,profit] = compound(b_sum,interest,years)
networth = b_sum*(1+interest/100)^years;
profit = networth - b_sum;
end
