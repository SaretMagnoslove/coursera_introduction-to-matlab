function T = pendulum(L,a0)
if L<=0
    fprintf ('L must be positive\n');
    T = 0;
    return
else
angel = a0;
ang_vel = 0;
t = 0;
while angel>0
    t=t+1e-6;
    ang_acc = 9.8*sin(angel)/L;
    ang_vel = ang_vel+ang_acc*1e-6;
    angel = angel-ang_vel*1e-6;
end
T = t*4;
end