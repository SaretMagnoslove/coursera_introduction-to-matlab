function [mean_att,max_att] = character(f,n)
%CHARACTER generates 6 attribues STR INT WIS DEX CON CHA
% Output MEAN and MAX of the 6 attributes
% f = number of times n = number of dices
attrib = zeros(6,1);
temp_mean = zeros(f,1);
for ii=1:f
    d6 = randi(6,6,n);
    for jj=1:6
        temp = sort(d6(jj,:));
        attrib(jj) = sum(temp(1,end-2:end));
    end
    temp_mean(ii) = mean(attrib);
end
mean_att = mean(temp_mean);
max_att = max(temp_mean);
end


