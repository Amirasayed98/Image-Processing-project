%build in function1
function frquancy_domain( img1 )
img=imread(img1);

fi=fft2(img);
fabs=abs(fi);
fstretching=log(1+fabs);
fn=mat2gray(fstretching);
inverse1=ifft2(fi);

fshift=fftshift(fi);
fabs_shift=abs(fshift);
fstretching_shift=log(1+fabs_shift);
fn_sfift=mat2gray(fstretching_shift);


figure;imshow(img1); title('first img');
figure;imshow(fn); title('frequancy domain without shifting');
figure;imshow(fn_sfift); title('frequancy domain after shifting');
figure;imshow(uint8(inverse1)); title('inverse furior transform without shifting');
                


end

