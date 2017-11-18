t = 0:0.01: pi;
n = length(t);
s = zeros(n);
step = 0.02;
for kk = [0:-step:-1, ...
-1+step:step:0-step, ...
0-step:-step:-1]
for ii = 1:n
for jj = 1:n
s(ii,jj) = 10 * kk * ...
(sin(t(ii)) + sin(t(jj)));
end
end
surf(t,t,s,'EdgeColor','none');
axis([0,pi,0,pi,-20,1]);
drawnow;
end
for kk = -37.5:30
view(kk,30);
drawnow;
end
for kk = 30:-1:5
view(30,kk);
drawnow;
end
