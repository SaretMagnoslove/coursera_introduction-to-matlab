function [R1,R2,c] = random_test(ran,row,col)
if nargin<2
    rng(0);R1 = randi(ran,row);
    if isscalar(ran)
        rng(0);R2=round(rand(row)*ran);
    else
        rng(0);R2=floor(ran(1,1)+rand(row,col)*ran(1,2)-ran(1,1)+1);
        rng(0);R1 = randi(ran,row,col);
    end
else
        if isscalar(ran)
            rng(0);R1=randi(ran,row,col);
            rng(0);R2=round(rand(row,col)*ran);
        else
            rng(0);R1=randi(ran,row,col);
            rng(0);R2=floor((ran(1,2)-ran(1,1)+1)*rand(row,col)+ran(1,1));
        end
end
c = sum(sum(R1==R2))==size(R1,1)*size(R1,2);
end