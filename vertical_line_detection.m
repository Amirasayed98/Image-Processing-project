function vertical_line_detection (image) 
%image=imread(image);
F=double(image);
[rows ,cols]=size(F);


A=[-1,0,1;-2,0,2;-1,0,1]
G1=zeros(3,3);

for i = 2:rows-1
    for j = 2:cols-1
    
    for k=-1:1
        for l=-1:1
        G1(k+2,l+2)=F(i+k,j+l)*A(k+2,l+2);
      
        end
    end
    H(i,j)=sum(sum(G1))/16;

    end
end
H = uint8((H ));



figure;imshow(uint8(F));title('Input Image ');

figure;imshow(H);title('Output horizontal line detection Image for mask A');


%sharp('cameraman.tif');