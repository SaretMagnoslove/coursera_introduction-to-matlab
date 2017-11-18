function new_image = replace_blue(filename,colors)
input_image=imread(filename);
new_image = input_image;
for ii=1:size(input_image,1)
    for jj=1:size(input_image,2)
        if input_image(ii,jj,3)>mean(input_image(ii,jj,:))
           new_image(ii,jj,1) = colors(1);
           new_image(ii,jj,2) = colors(2);
           new_image(ii,jj,3) = colors(3);
        end
    end
end
end
