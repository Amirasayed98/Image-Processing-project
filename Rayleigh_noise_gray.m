function Rayleigh_noise_gray( img,a,b )
%img=imread(img);
imgn=Rayleigh_noise( img,a,b );
figure;imshow(img); title('image_before_noise');
figure;imshow(imgn); title('image_after_noise');
figure;imhist(img); title('image_berfor_noise');

figure;imhist(imgn); title('image_after_noise');

end

%Rayleigh_noise_gray( 'cameraman.tif',200,10000)