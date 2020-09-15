function [ ] = rgb2binary( img ,Level)
%img = imread(img);
img1 = double(img);
Gray = [];
for i=1:size(img1 , 1)
    for j=1:size(img1 , 2)
        Gray(i,j)=(img1(i,j,1)+img1(i,j,2)+img1(i,j,3))/3;
    end
end
Gray = uint8(Gray);
img1 = double(Gray);
Binary = [];
[h,w]=size(img1); 
for i=1:h
    for j=1:w
        if img1(i,j)>= Level
            Binary(i,j)=1;
        else
            Binary(i,j)=0;
        end
    end
end
Binary = logical(Binary);
figure; imshow(Binary);
end