function mix_sines(f1,f2)
x = 0:00.2:pi*6;
y = sin(f1*x)+sin(f2*x+pi);
plot (x,y);
end