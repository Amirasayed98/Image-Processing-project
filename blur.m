function [filt_img] = blur(F)
F=double(imread('cameraman.tif'));
H=F;
[rows, cols]=size(F);
A=ones(3,3)/9;
G1=zeros(3,3);
for i = 2:rows-1
    for j = 2:cols-1
    
    for k=-1:1
        for l=-1:1
        G1(k+2,l+2)=F(i+k,j+l)*A(k+2,l+2);
        end
    end
    H(i,j)=sum(sum(G1));
    end
end
H = uint8(round(H - 1));
figure()
subplot(2,1,1);
imshow(uint8(F));
title('Input Image for bluring Filters');
subplot(2,1,2);
imshow(H);
title('Output blured Image ');
end