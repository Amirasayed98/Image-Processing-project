function [img_new] = gamma_corr(img , g)
%img =imread(img);
normalizedImage = mat2gray(img);
[r,c]=size(img);
for i=1:r
    for j=1:c
        x=normalizedImage(i,j);
        img_new(i,j)=x.^g;
        
    end
end
figure;imshow(normalizedImage);title('before');
figure;imshow(img_new);title('after');
      
end