clc
clear all
n = [10 15 20 25 30];
D = 0.1*[0.042 0.0595 0.098 0.133 0.189];
t1 = sum(n.*D);
t2 = sum(n.^2);
m = t1/t2;
n1 = [0 10 15 20 25 30];
d = m.*n1;
scatter(n,D);
hold on;
plot(n1,d);
xlabel('Number of fringes(n)');
ylabel('Distance travelled by mirror(D)');
legend('D vs n','Line of Best Fit');