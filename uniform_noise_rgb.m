function uniform_noise_rgb( img0,a,b,pop )
img=imread(img0);
% [H, W] = size(img);
% if b>a
% num_of_pixels =ceil(( 1/(a-b))*H*W);
% else
%    num_of_pixels =ceil(( 1/(b-a))*H*W);
% end
img(:,:,1)=uniform_noise(img(:,:,1),a,b,pop);
img(:,:,2)=uniform_noise(img(:,:,2),a,b,pop);
img(:,:,3)=uniform_noise(img(:,:,3),a,b,pop);



subplot(2, 1,  1);imshow(img0); title('image_before_noise');
subplot(2, 1,  2);imshow(img); title('image_after_noise');

end

