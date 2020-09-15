function [newImg] = contrast_stretch(oldImg , newMin, newMax)
 %  oldImg=imread(oldImg);
	[H, W, L] = size(oldImg);
	newImg = double(zeros(H, W, L));
    
    
    for layer = 1:L
        oldMin = double(min(min(oldImg(:, :, layer))));
        oldMax = double(max(max(oldImg(:, :, layer))));
        
        
        for i = 1:H
            for j = 1:W
                oldVal = double(oldImg(i, j, layer));
                newImg(i, j, layer) = (oldVal - oldMin) / (oldMax - oldMin) * (newMax - newMin) + newMin;
            end
        end
    end
    
newImg = uint8(newImg);
figure(1),imshow(oldImg);title('before');
figure(2),imhist(oldImg);title('before');
figure(3),imshow( newImg);title('after');
figure(4),imhist(newImg);title('after');

end
%command line
%x=imread('pout.tif');
 %contrast_stretch(x, 0, 255);