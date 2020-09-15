function new_img = gaussian(img,m,v,pr)

[H, W] = size(img);
x=max(max(img));
for i = 1:double(x)
num_of_pixels = (1/sqrt(2*pi*v))*exp(-((i-m)*(i-m)/(2*v*v)))*H*W*pr;
	for j=1:num_of_pixels
        x = floor(rand(1,1)*H)+1;
        y = floor(rand(1,1)*W)+1;
        img(x, y) =img(x, y)+i;
		
    end
end
new_img=img;
%subplot(2, 1,  1);imshow(img); title('image_before_noise');
%subplot(2, 1,  2);imshow(new_img); title('image_after_noise');

end

