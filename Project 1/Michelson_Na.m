clear
clc

x=50:50:300;
y=[0.01475 0.02975 0.04475 0.0595 0.07475 0.09025];
p1=polyfit(x,y,1);
hold on
scatter(x,y)
plot(x,polyval(p1,x))
hold off
err1=sum((y-polyval(p1,y)).^2);
xlabel('No. of fringes (N)')
ylabel('Distance travelled by mirror (D)')
title('Wavelength of light plot: D vs. N')


