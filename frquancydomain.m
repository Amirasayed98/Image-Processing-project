function frquancydomain( img )
%img1=imread(img);
fi=fft2(img);
re=real(fi);
im=imag(fi);
power=re.^2+im.^2;
fabs=sqrt(power);
flog=log(1+fabs);
new_max=255;
new_min=0;
old_max=max(max(flog));
old_min=min(min(flog));
fn=((flog-old_min)./(old_max-old_min)).*(new_max-new_min)+new_min;


%shift

fshift=fftshift(fi);
res=real(fshift);
ims=imag(fshift);
spower=res.^2+ims.^2;
sfabs=sqrt(spower);
sflog=log(1+sfabs);
new_max=255;
new_min=0;
old_max=max(max(sflog));
old_min=min(min(sflog));
sfn=((sflog-old_min)./(old_max-old_min)).*(new_max-new_min)+new_min;


inverse1=ifft2(fi);
figure;imshow(img); title('first img');
figure;imshow(uint8(fn)); title('frequancy domain without shifting');
figure;imshow(uint8(sfn)); title('frequancy domain after shifting');
figure;imshow(uint8(inverse1)); title('inverse furior transform ');

%frquancydomain( 'cameraman.tif')
              

 