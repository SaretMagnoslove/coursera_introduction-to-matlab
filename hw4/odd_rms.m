function orms = odd_rms(nn)
odds = [1:2:nn*2-1];
orms = sqrt(mean(odds.^2));
end
