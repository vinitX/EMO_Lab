clear;
x=-30:0.1:30;
y=-30:0.1:30;
num=size(x,2);
z=zeros(num,num);
for i=1:1:num
    for j=1:1:num
        if (x(i)^2+y(j)^2)<1
            z(i,j)=1;
        end
    end
end

fourier=fft2(z);
%imagesc(z);
fourier=fftshift(fourier);
fourier_abs=abs(fourier);
fourier_abs=mat2gray(fourier_abs); 
imagesc(fourier_abs);