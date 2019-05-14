clear;
x=-30:0.1:30;
num=size(x,2); 
for i=1:1:num 
    if x(i)<2.5 && x(i)>1.5 y(i)=1; 
    else if x(i)<-1.5 && x(i)>-2.5 y(i)=1; 
    else y(i)=0; 
    end
    end
end
subplot(3,1,1); 
plot(x,y);
xlabel('aperture function'); 
subplot(3,1,2); 
imagesc(y);
xlabel('aperature for diffraction'); 
fourier=fft(y); 
fourier=fftshift(fourier);
fourier_abs=abs(fourier);
fourier_abs=mat2gray(fourier_abs); 
subplot(3,1,3); 
imagesc(fourier_abs);
xlabel('diffraction pattern using fft2');