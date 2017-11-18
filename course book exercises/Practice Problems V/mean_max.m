function [mm] = mean_max(A)
for ii=1:(size(A,1))
    mm(ii).mean=double(mean(A(ii,:)));
    mm(ii).max=max(A(ii,:));
end
end

    