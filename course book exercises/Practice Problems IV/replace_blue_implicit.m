function new_image = replace_blue_implicit(filename,colors)

input_image = imread(filename);

new_image_red = input_image(:,:,1);
new_image_green = input_image(:,:,2);
new_image_blue = input_image(:,:,3);
new_image_mean = mean(input_image,3);

pixels_rep = new_image_blue>1.2*new_image_mean;

new_image_red(pixels_rep) = colors(1);
new_image_green(pixels_rep) = colors(2);
new_image_blue(pixels_rep) = colors(3);

new_image(:,:,1) = new_image_red;
new_image(:,:,2) = new_image_green;
new_image(:,:,3) = new_image_blue;

end