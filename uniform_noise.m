function new_img=uniform_noise( img,a,b ,pop)

[W,H,l] = size(img);
n =ceil(( 1/(b-a))*H*W)*pop;
for i=a:b
	for j=1:n
        x = ceil(rand(1, 1)*W);
        y = ceil(rand(1, 1)*H);
        img(x, y) =img(x, y)+i;


	end
end
BadImage=double(img);
I_min=min(BadImage(:));
I_max=max(BadImage(:));

GoodImage=255.*(BadImage-I_min)/(I_max-I_min);
GoodImage=uint8(GoodImage);

new_img=GoodImage;


end

