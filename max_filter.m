function [ max_img ] = max_filter( img,f_height,f_width )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%img=imread(img);

[H,W,L] = size(img);
max_img=zeros(H,W,L);
figure, imshow(img);
img=double(img);
copy= zeros(f_height,f_width);
x=floor(f_height/2);
y=floor(f_width/2);
for i = 1:H-f_height
    for j = 1:W-f_width
    for z=1:L 
        for k=1:f_height
             for m=1:f_width
              copy(k,m) =img(i+k-1,j+m-1,z);
        
             end 
        end
        max_img(i+x,j+y,z)=max(copy(:));
    end
    
    end
end

max_img=uint8(max_img);

%figure;imshow(img); title('imagenoise');
figure;imshow(max_img); title('image_remove_noise');
end

%max_filter( 'p.png' ,3,3)