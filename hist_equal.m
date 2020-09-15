function [new_img] = hist_equal(img)
figure, imshow(img)
count  = imgtohist(img);
img_size = size(img);
new_img = zeros(img_size(1), img_size(2));
num_pixels = img_size(1) * img_size(2);
probs = count ./ num_pixels;


L_1 = 255;
new_grays = zeros(1,255);
for i = 1:255
    if probs(i) > 0
   new_grays(i) = round(L_1*sum(probs(1:i)));
   
   new_img(img == i) = new_grays(i);
end
end

new_img = uint8(new_img);
figure, imshow(new_img);

imgtohist(new_img);

end