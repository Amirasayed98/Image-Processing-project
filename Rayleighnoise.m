function new_img=Rayleighnoise( im,a,b )
 img=imread(im);
[W,H, l] = size(img);
x=max(max(img));
for z = 1:double(x)
    if z>=a
        num_of_pixels=((2/b)*(z-a)*exp(((z-a)^2)/b))*H*W;
    else
        num_of_pixels=0;
    
    end

        for j=1:num_of_pixels
          x = ceil(rand(1,1)*H);
          y = ceil(rand(1,1)*W);
          img(x, y) =img(x, y)+j;
       
        end
 end

new_img=img;
       

subplot(2, 2,  1);imshow(im); title('image_before_noise');
subplot(2, 2,  2);imshow(new_img); title('image_after_noise');
subplot(2, 2,  3);imhist(imread(im)); title('image_berfor_noise');

subplot(2, 2,  4);imhist(new_img); title('image_after_noise');




end
% Rayleighnoise('cameraman.tif',200,10000)
