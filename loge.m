function [img_new] = loge(img )
%img =imread(img);
normalizedImage = mat2gray(img);
[r,c]=size(img);
for i=1:r
    for j=1:c
        x=normalizedImage(i,j);
        img_new(i,j)=log(x + 1);
        
    end
end
imshow(img_new)
      
end