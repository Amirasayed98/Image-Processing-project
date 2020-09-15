function edged(image)

F=double(image);
[rows ,cols]=size(F);
  m=[1,1,1;1,-8,1;1,1,1];
 
G1=zeros(3,3);

for i = 2:rows-1
    for j = 2:cols-1
    
    for k=-1:1
        for l=-1:1
        G1(k+2,l+2)=F(i+k,j+l)*m(k+2,l+2);
        end
    end
    H(i,j)=sum(sum(G1));
    end
end
H = uint8((H ));
figure;imshow(uint8(F));title('Input Image for edge detectiom Filters');
figure;imshow(H);title('Output edge detection Image for mask m');
% edged('cameraman.tif')
