function [ Binary ] = GrayToBinary( Gray , Level )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%img = imread(Gray);
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

