%Create a black 30x30 image
f = zeros(256,256);

%With a white rectangle init.
f(120:128,120:128)=1;
subplot(2,2,1); imshow(f); title('Simple Image');

%Calculate the DFT.
F=fft2(f);

%There are real and imai=ginary parts to F.
%Use the abs function to compute the magniture of the combined
% components to display the Fourier transform of the image.
F2=abs(F);
subplot(2,2,2); imshow(F2,[]); title('Fourier Spectrum');

%The zero-frequency coefficient is displayed in the
%upper left hand corner. To display it in the center,
%you can use the function fftshift.
F2=fftshift(F);
F2=abs(F2);
subplot(2,2,3); imshow(F2,[]); title('Centered Spectrum');

%The Fourier transform, high peaks are so high they
%hide details. Reduce contrast with the log function
F2=log(1+F2);
subplot(2,2,4); imshow(F2,[]); title('Log enhanced spectrum');