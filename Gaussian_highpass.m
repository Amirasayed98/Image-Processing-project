function Gaussian_highpass  ( img1 , d0)
%img1=imread(img);
[H, W, l] = size(img1);

mask = zeros(H, W);
for i = 1:H
	for j = 1:W
		D(i,j) =sqrt( (i - H/2)^2 + (j - W/2)^2 );
		mask(i,j)= 1-exp ( -( (D(i,j)^2)/(2*(d0^2)) ) );
                    
		end
	end

if l==1
    fi=fft2(img1);
    fshift=fftshift(fi);
    for a=1:H
        for b=1:W
            newimg(a,b) = fshift(a,b)*mask(a,b);
        end
    end

    
newimg_shift=fftshift(newimg);
inverse1=ifft2(newimg_shift);
 figure; imshow(uint8(inverse1));
else
     i1=img1(:,:,1);
 i2=img1(:,:,2);
 i3=img1(:,:,3);
 fi1=fft2(i1);
 fi2=fft2(i2);
 fi3=fft2(i3);
 fshift1=fftshift(fi1);
 fshift2=fftshift(fi2);
 fshift3=fftshift(fi3);
   for a=1:H
        for b=1:W
            newimg1(a,b) = fshift1(a,b)*mask(a,b);
            newimg2(a,b) = fshift2(a,b)*mask(a,b);
            newimg3(a,b) = fshift3(a,b)*mask(a,b);
        end
   end
    newimg_shift1=fftshift(newimg1);
    newimg_shift2=fftshift(newimg2);
    newimg_shift3=fftshift(newimg3);
    inverse11=ifft2(newimg_shift1);
    inverse12=ifft2(newimg_shift2);
    inverse13=ifft2(newimg_shift3);
    imgn(:,:,1)=inverse11;
    imgn(:,:,2)=inverse12;
    imgn(:,:,3)=inverse13;
   figure; imshow(uint8(imgn));
end
end

