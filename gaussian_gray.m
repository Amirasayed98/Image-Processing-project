function gaussian_gray( img,m,v,pr )
%img=imread(img);
imgn=gaussian(img,m,v,pr);
figure;imshow(img); title('image_before_noise');
figure;imshow(imgn); title('image_after_noise');
figure;imhist(img); title('image_berfor_noise');

figure;imhist(imgn); title('image_after_noise');

end




%gaussian_gray('cameraman.tif',3,10,2)
