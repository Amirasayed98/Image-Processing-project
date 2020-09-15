function new_img =Erlang_noise( img,a,b )
[W, H] = size(img);
x=max(max(img));
for i = 1:double(x)
num_of_pixels = ((((a^b)*(i^(b-1)))/(b-1))*exp(-a*i))*H*W;
	for j=1:num_of_pixels
       x = floor(rand(1,1)*H)+1;
        y = floor(rand(1,1)*W)+1;
        img(x, y) =img(x, y)+j;
		
    end
end
new_img=img;


end

