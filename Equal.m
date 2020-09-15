function [new] = Equal( I )


% size of the input image.
[r,c] = size(I); 

% uint 8 blamk canvas
new = uint8(zeros(r,c));  

% number of pixels.
mn = r*c;

% frequency pdf and cdf and some variables
f = zeros(256,1);
pdf = zeros(256,1);
cdf = zeros(256,1);
out = zeros(256,1);
cum = zeros(256,1);


% Finding Pdf

for i = 1:r
    for j = 1:c
        val = I(i,j);
        f(val+1) = f(val+1)+1;
        pdf(val+1) = f(val+1)/mn;
   
    
    end
end
figure, bar(pdf);
% finding cdf
sum = 0;
L = 255;

for i = 1:size(pdf)
    sum = sum + f(i);
    cum(i) = sum;
    cdf(i) = cum(i)/mn;
    out(i) = round(cdf(i)*L);
end
figure, bar(out);
%Rewrite The original image with new gray levels

for i = 1:r
    for j = 1:c
        new(i,j) = out(I(i,j)+1);
    end
    
end
   figure, bar(new);
   figure, imhist(new);
   figure,imshow(uint8(new));
   
end

