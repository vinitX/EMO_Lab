clear;
clc;
x=(0:2:16)';
y1=[0 1.17 2.30 3.45 4.59 5.80 7.00 8.30 9.57]';
y2=[0 1.06 2.06 3.12 4.16 5.26 6.37 7.54 8.65]';
y3=[0 0.75 1.51 2.27 3.05 3.83 4.64 5.45 6.25]';
y4=[0 0.60 1.21 1.82 2.44 3.05 3.71 4.32 4.98]';

p1=polyfit(x,y1,1);
p2=polyfit(x,y2,1);
p3=polyfit(x,y3,1);
p4=polyfit(x,y4,1);

n=length(x);
e1=sum((y1-polyval(p1,x)).^2)^0.5;
e2=sum((y2-polyval(p2,x)).^2)^0.5;
e3=sum((y3-polyval(p3,x)).^2)^0.5;
e4=sum((y4-polyval(p4,x)).^2)^0.5;

hold on
scatter(x,y1);
scatter(x,y2);
scatter(x,y3);
scatter(x,y4);
plot(x,y1,x,y2,x,y3,x,y4)
hold off
%plot(x,polyval(p1,x),x,polyval(p2,x),x,polyval(p3,x),x,polyval(p4,x));
legend('0^o','30^o','60^0','90^0');
xlabel('Voltage (V)');
ylabel('Current (\muA)');
title('Current-Voltage characteristics of CdS Photoresistor');