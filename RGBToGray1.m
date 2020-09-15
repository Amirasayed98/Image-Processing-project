function [ Gray ] = RGBToGray1( img )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
%img = imread(RGB);
img1 = double(img);
Gray = [];
for i=1:size(img1 , 1)
    for j=1:size(img1 , 2)
        Gray(i,j)=(img1(i,j,1)+img1(i,j,2)+img1(i,j,3))/3;
    end
end
Gray = uint8(Gray);
figure;imshow(Gray)
end

