function uniform_noise_gray( img0,a,b ,pop)
%img=imread(img0);
% [H, W] = size(img);
% num_of_pixels =ceil(( 1/(b-a))*H*W);

imgn=uniform_noise(img0,a,b,pop);
figure;imshow(img0); title('image_before_noise');
figure;imshow(imgn); title('image_after_noise');
figure;imhist(img0); title('image_berfor_noise');

figure;imhist(imgn); title('image_after_noise');



end

%uniform_noise_gray( 'cameraman.tif',0.8,50,0.9)