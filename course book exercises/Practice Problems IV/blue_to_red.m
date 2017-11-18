function new_image = blue_to_red(filename)
input_image = imread(filename);
new_image = input_image;
for ii=1:size(input_image,1)
    for jj=1:size(input_image,2)
        if input_image(ii,jj,3)>mean(new_image(ii,jj,:))
            new_image(ii,jj,1)=input_image(ii,jj,3);
            new_image(ii,jj,2:3)=0;
        end
    end
end
end
