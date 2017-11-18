function draw_constellations
close all
figure
axis square
set (gcf,'color','k'); set (gca,'color','k')
hold on
old = false;
xvec = [];yvec=[];
while 1
    [x,y,button] = ginput(1);
    xvec = [xvec x];
    yvec = [yvec y];
    switch button
        case 1
            if old
                plot (x,y,'w*')
                plot ([xvec(end) xvec(end-1)], [yvec(end) yvec(end-1)],'w-')
            else
                plot (x,y,'w*')
                old = true;
            end
        case {'n','N'}
            xvec = [];
            yvec = [];
            old = false;
        case {'q','Q'}
            close all
            return
    end
end
end
            
    