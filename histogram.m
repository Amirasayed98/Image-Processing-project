function hh= histogram( img )
%img1=imread(img);
img2=double(img);
[w,h,l]=size(img2);
hist=zeros(256,1);
if l==1
    for i=1:w
        for j=1:h
            x=img2(i,j);
            hist(x+1,1)=hist(x+1,1)+1;
        end
    end
    hh=bar(hist);

else
    R = img2(:,:,1);
    G = img2(:,:,2);
    B = img2(:,:,3); 
    for i=1:w
        for j=1:h
            x=R(i,j);
            y=G(i,j);
            z=B(i,j);
            hist(x+1,1)=hist(x+1,1)+1;
            hist(y+1,1)=hist(y+1,1)+1;
            hist(z+1,1)=hist(z+1,1)+1;
        end
    end
    
figure;hh=bar(hist);
    
end

end