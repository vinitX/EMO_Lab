clear
clc
y=[0.55 3.10 5.90 8.47 11.02 13.54 15.84];
x=1:7;

p=polyfit(x,y,1);
hold on
scatter(x,y)
plot(x,polyval(p,x))
hold off
err=sum((y-polyval(p,x)).^2);
xlabel('order number (p)')
ylabel('D_p^2 (mm^2)')
title('Measurement of fractional order (e): D_p^2 vs order number (p) ')


figure()
x=10:10:50;
y=[2.88 5.64 8.52 11.40 14.16];
p1=polyfit(x,y,1);
hold on
scatter(x,y)
plot(x,polyval(p1,x))
hold off
err1=sum((y-polyval(p1,y)).^2);
xlabel('No. of fringes (N)')
ylabel('Distance travelled by mirror (D)')
title('Wavelength of light plot: D vs. N')


