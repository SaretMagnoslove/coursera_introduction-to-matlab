function w = move_me(v,a)
switch nargin
    case 1
        temp = v(v==0);
        v(v==0)=[];
        w = [v temp];
    case 2
        temp = v(v==a);
        v(v==a)=[];
        w = [v temp];
end
end

        



