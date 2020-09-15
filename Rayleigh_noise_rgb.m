function Rayleigh_noise_rgb( img,a,b )
img=imread(img);

img1(:,:,1)=Rayleigh_noise(img(:,:,1),a,b);
img1(:,:,2)=Rayleigh_noise(img(:,:,2),a,b);
img1(:,:,3)=Rayleigh_noise(img(:,:,3),a,b);

subplot(1, 2,  1);imshow(img); title('image_before_noise');
subplot(1, 2,  2);imshow(img1); title('image_after_noise');
end

