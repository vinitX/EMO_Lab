clear
clc
A=[13.27 9.87 7.97 6.46 5.09 3.22 2.33];
A=A-13.27;
A=A.^2;
B=0:6;
p=polyfit(B,A,1);
hold on
scatter(B,A)
plot(B,polyval(p,B))
hold off
err=sum((A-polyval(p,B)).^2);
xlabel('Order of Bright Fringe (n)')
ylabel('X_n^2')
title('Separation between the plates of etalon: X_n^2 vs n')

figure()
x=1:4;
y=0.035*[0.81 1.64 2.48 3.3];
p1=polyfit(x,y,1);
hold on
scatter(x,y)
plot(x,polyval(p1,x))
hold off
err1=sum((y-polyval(p1,y)).^2);
xlabel('No. of fringes (N)')
ylabel('Distance travelled by mirror (D)')
title('Wavelength of light plot: D vs. N')