function Exponential_noise_gray( img,a)
%img=imread(img);
imgn=Exponential_noise(img,a);
figure;imshow(img); title('image_before_noise');
figure;imshow(imgn); title('image_after_noise');
figure;imhist(img); title('image_berfor_noise');

figure;imhist(imgn); title('image_after_noise');

end

%Exponential_noise_gray('cameraman.tif',0.2)
%Exponential_noise_gray('cameraman.tif',0.01)

