function [ NewImg ] = Brightness( img , offset , operation )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
%img = imread(OldImg);
img1 = double(img);
NewImg = [];
switch (operation)
    case 'add'
        for i=1:size(img1 , 1)
            for j=1:size(img1 , 2)
                if(img1(i,j)+offset>=255)
                    NewImg(i,j)=255;
                else
                NewImg(i,j)=img1(i,j)+offset;
                end
            end
        end
    case 'sub'
        for i=1:size(img1 , 1)
            for j=1:size(img1 , 2)
                if(img1(i,j)-offset<=0)
                    NewImg(i,j)=0;
                else
                NewImg(i,j)=img1(i,j)-offset;
                end
            end
        end
    case 'multi'
        for i=1:size(img1 , 1)
            for j=1:size(img1 , 2)
                if(img1(i,j)*offset>=255)
                    NewImg(i,j)=255;
                else
                NewImg(i,j)=img1(i,j)*offset;
                end
            end
        end
    case 'div'
        for i=1:size(img1 , 1)
            for j=1:size(img1 , 2)
                if(img1(i,j)/offset<=0)
                    NewImg(i,j)=0;
                else
                NewImg(i,j)=img1(i,j)/offset;
                end
            end
        end
    otherwise
        disp('other value');
end

NewImg = uint8(NewImg);
figure;imshow(NewImg)
end

