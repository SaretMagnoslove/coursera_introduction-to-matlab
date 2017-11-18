function click_and_plot
figure
axis([0 100 0 100])
hold on
button = '0';
while button ~='q' && button ~= 'Q'
    [x,y,button] = ginput(1);
    plot(x,y,'bo')
end
holy
end