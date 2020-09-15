function  soltandpepper (img1, ps, pp)
% img1=imread(img1);

[H, W, l] = size(img1);
ns=ps*W*H;
np=pp*W*H;
for i=1:ns
	x = ceil(rand(1, 1)*W);
	y = ceil(rand(1, 1)*H);
	img1(x, y) = 255;
end
for i=1:np
	x = ceil(rand(1, 1)*W);
	y = ceil(rand(1, 1)*H);
	img1(x, y) = 0;
end

%figure;imshow(img); title('image_before_noise');
figure;imshow(img1); title('image_after_noise');

end

%soltandpepper ('cameraman.tif', 0.5, 0.7)
%soltandpepper ('cameraman.tif', 0.1, 0.2)