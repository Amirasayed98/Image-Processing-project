function gaussian_rgb(img0,m,v)

img=imread(img0);

img(:,:,1)=gaussian(img(:,:,1),m,v);
img(:,:,2)=gaussian(img(:,:,2),m,v);
img(:,:,3)=gaussian(img(:,:,3),m,v);



subplot(1,2, 1);imshow(img0); title('image_before_noise');
subplot(1,2, 2);imshow(img); title('image_after_noise');

end










