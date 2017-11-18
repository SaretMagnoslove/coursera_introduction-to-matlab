function [n, total] = just_enough_logs(x)
if x<=1; fprintf('Input must be > 1\n')
    n=0;total=0;return
end
n = 0;
while n*log(x) < 5
    n = n+1;
end
total = n*log(x);
end
