function new_img=Rayleigh_noise( img,a,b )

[W,H, l] = size(img);
x=max(max(img));
for z = 1:double(x)
    if z>=a
        num_of_pixels=((2/b)*(z-a)*exp(((z-a)^2)/b))*H*W;
    else
        num_of_pixels=0;
    end
        for j=1:num_of_pixels
          x = floor(rand(1,1)*H)+1;
         y = floor(rand(1,1)*W)+1;
        img(x, y) =img(x, y)+j;
        
        end
end

new_img=img;


end

