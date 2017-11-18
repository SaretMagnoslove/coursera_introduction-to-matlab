function point_cloud(n)
x = randn(1,n);
y = randn(1,n);
hold on
axis([-5 5 -5 5])
for ii=1:n
    plot(x(ii),y(ii));
    drawnow
end
end
