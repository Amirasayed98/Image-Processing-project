function AverageFilter(image)
img= imread(image);
img1=double(img);
[x,y,l]=size(img1);
img2=[];

if l==1 
for i = 4:x-3
    for j = 4:y-3
        sum = 0;
        for a = i-3:i+3  
            for b = j-3:j+3
                sum = sum + (img1(a,b)/9);
            end
        end
   
        
        img2(i,j) =sum;
     
    end
end
img2=uint8(img2);
figure;imshow(img); title('before filter');
figure;imshow(img2); title('after filter');

else 


	for i = 4:x-3
    for j = 4:y-3
        sum1 = 0;
        sum2=0;
        sum3=0;
        for a = i-3:i+3  
            for b = j-3:j+3
        sum1 = sum1 + (img1(a,b,1)/49);
		sum2 = sum2 + (img1(a,b,2)/49);
		sum3= sum3 + (img1(a,b,3)/49);
            end
            
         
        end
   
        
        img2(i,j,1) =sum1;
        img2(i,j,2) =sum2;
        img2(i,j,3) =sum3;

    	end
    end
img2=uint8(img2);
figure;imshow(img); title('before filter');
figure;imshow(img2); title('after filter');


end
% AverageFilter('cameraman.tif')
