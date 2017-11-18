function new_image = blue_to_red_implicit(filename)
input_image = imread(filename);
new_image_red = input_image(:,:,1);
new_image_green = input_image(:,:,2);
new_image_blue = input_image(:,:,3);
new_image_mean = mean(input_image,3);
pixels_change = (new_image_blue>1.2*new_image_mean);
new_image_blue(pixels_change) = new_image_green(pixels_change);
new_image_red(pixels_change) = 0;
new_image_blue(pixels_change) = 0;

new_image(:,:,1) = new_image_red;
new_image(:,:,2) = new_image_green;
new_image(:,:,3) = new_image_blue;

end


