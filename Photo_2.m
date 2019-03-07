clear;
clc;
x=[0 20 25 30 40 45 50 55 65 70 90]';
x=cos(x*pi/180).^2;
y1=[0.55 0.54 0.52 0.51 0.47 0.45 0.42 0.40 0.34 0.32 0.28]';
y2=[4.8	4.53	4.34	4.19	3.8	3.6	3.35	3.17	2.77	2.6	   2.24]';
y3=[9.89	9.34	9.1	8.79	7.95	7.53	7.11	6.71	5.88	5.51	4.82]';

p1=polyfit(x,y1,2);
p2=polyfit(x,y2,2);
p3=polyfit(x,y3,2);

n=length(x);
e1=mean((y1-polyval(p1,x)).^2)^0.5;
e2=mean((y2-polyval(p2,x)).^2)^0.5;
e3=mean((y3-polyval(p3,x)).^2)^0.5;

hold on
scatter(x,y1);
scatter(x,y2);
scatter(x,y3);
plot(x,polyval(p1,x),x,polyval(p2,x),x,polyval(p3,x));
legend('1V', '8V', '16V');
xlabel('cos^2(\alpha)');
ylabel('Photocurrent (\muA)');
title('Current-irradiance characteristics of the CdS photoresistor');
hold off