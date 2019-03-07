clear;
x=-30:0.05:30;
y=-30:0.05:30;
n=length(x);
c=zeros(n,n); %Capacitivie
for i=1:n
    for j=1:n
        if mod(i,4)>0 && mod(j,4)>0
            c(i,j)=1;
        end
    end
end
g=zeros(n,n);
for i=1:n
    for j=1:n
        g(i,j)=exp(-((i-n/2)^2+(j-n/2)^2)/20);
    end
end

%{
d=6;
for i=int64(n/2)-d:1:int64(n/2)+d
for j=int64(n/2)-d:1:int64(n/2)+d
    if mod(i,2)>0 && mod(j,2)>0
            z(i,j)=1;
    end
end
end
%}
Z=g.*c;

fourier=fft2(Z);
imagesc(Z);
fourier=fftshift(fourier);
fourier_abs=abs(fourier);
fourier_abs=mat2gray(fourier_abs); 
figure()
imagesc(fourier_abs);
figure()
plot(fourier_abs(600,:));