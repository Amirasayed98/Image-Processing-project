function Exponential_noise_RGB( img0,a)
img=imread(img0);


img1(:,:,1)=Exponential_noise(img(:,:,1),a);
img1(:,:,2)=Exponential_noise(img(:,:,2),a);
img1(:,:,3)=Exponential_noise(img(:,:,3),a);



subplot(2,1,  1);imshow(img); title('image_before_noise');
subplot(2,1,  2);imshow(img1); title('image_after_noise');


end
