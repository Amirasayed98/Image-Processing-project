function negimg = negative(img)
%img=imread(grayimg);
img1=double(img);
[w,h,l]=size(img1);
negimg=[];

if l==1
    for i=1:w
        for j=1:h
            negimg(i,j)=255-img1(i,j);
        end
    end
       
else
    for i=1:w
        for j=1:h
             negimg(i,j,3) = 255 - img1(i,j,3);  
             negimg(i,j,2) = 255 - img1(i,j,2);  
             negimg(i,j,1) = 255 - img1(i,j,1);
        end
    end
            
 end
negimg=uint8(negimg);
figure;imshow(negimg);


end


