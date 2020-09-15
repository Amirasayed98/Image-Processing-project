function [] = log_loginverse( img,index)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

%I = imread(img);


L=256 ;      
switch (index)

    case 1
     
log_I = uint8(log(double(img)+1) .* ((L - 1)/log(L)));
figure; imshow(log_I); title('log transformation');
    case 2     
exp_I = uint8((exp(double(img)) .^ (log(L) / (L-1))) - 1);
figure; imshow(exp_I); title('inverse log');
   

end



end

