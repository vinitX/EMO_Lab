clc;
clear;

F = @(n,x) n(1)+n(2)*cos(x-n(3)).^2;
n0 = [0 20 0];

data=[0,13.6000000000000,20.6000000000000,10.6000000000000;10,14.7000000000000,18.5000000000000,14;20,14.9000000000000,15.2000000000000,17.2000000000000;30,14.7000000000000,12.7000000000000,20.5000000000000;40,14.8000000000000,10.3000000000000,22.1000000000000;50,12.6000000000000,9.10000000000000,23.8000000000000;60,12.6000000000000,9.80000000000000,24.4000000000000;70,12.8000000000000,11.7000000000000,24.4000000000000;80,12.6000000000000,14.3000000000000,21.9000000000000;90,12.2000000000000,16.9000000000000,18.9000000000000;100,11.8000000000000,19.8000000000000,14.6000000000000;110,11.2000000000000,22,11.7000000000000;120,11.6000000000000,24.7000000000000,8.70000000000000;130,11.6000000000000,25.4000000000000,6.70000000000000;140,10.7000000000000,23.5000000000000,6.10000000000000;150,10.8000000000000,22.5000000000000,6.20000000000000;160,12.8000000000000,21.9000000000000,7.60000000000000;170,12.8000000000000,21.3000000000000,8.90000000000000;180,12.6000000000000,18.4000000000000,11.4000000000000;190,13.4000000000000,16.6000000000000,15.4000000000000;200,14.4000000000000,14.6000000000000,19.5000000000000;210,15.3000000000000,12.2000000000000,22.6000000000000;220,14.2000000000000,9.70000000000000,22.8000000000000;230,13.1000000000000,8.70000000000000,24.4000000000000;240,12.5000000000000,9,24.4000000000000;250,11.8000000000000,10.2000000000000,22.9000000000000;260,11.1000000000000,11.8000000000000,20.6000000000000;270,10.4000000000000,13.6000000000000,18.6000000000000;280,10,15.5000000000000,13.6000000000000;290,10.1000000000000,17.2000000000000,11.9000000000000;300,9.90000000000000,18.9000000000000,8.90000000000000;310,10.3000000000000,20.4000000000000,6.40000000000000;320,11.2000000000000,21.9000000000000,6.30000000000000;330,12.3000000000000,22.9000000000000,6.90000000000000;340,12.4000000000000,22,7.80000000000000;350,12.2000000000000,21.6000000000000,9.60000000000000;360,13.6000000000000,20.6000000000000,10.6000000000000];
x=data(:,1)*pi/180;
y1=data(:,2);
y2=data(:,3);
y3=data(:,4);

e=zeros(1,3);
n = lsqcurvefit(F,n0,x,y1);
plot(x,F(n,x))
polarscatter(x,y1,'*')
hold on
polarplot(x,F(n,x))
hold off
e(1)=mean((y1-F(n,x)).^2)^0.5;

figure()
n = lsqcurvefit(F,n0,x,y2);
plot(x,F(n,x))
polarscatter(x,y2,'*')
hold on
polarplot(x,F(n,x))
hold off
e(2)=mean((y2-F(n,x)).^2)^0.5;

figure()
n = lsqcurvefit(F,n0,x,y3);
plot(x,F(n,x))
polarscatter(x,y3,'*')
hold on
polarplot(x,F(n,x))
hold off
e(3)=mean((y3-F(n,x)).^2)^0.5;