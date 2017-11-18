function mul_sines(f1,f2)
t = 0:0.02:pi*6;
y = sin(f1.*t).*sin(f2.*t+pi);
plot (t,y);
end
