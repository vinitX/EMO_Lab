clc
clear

d=6;
D=46.5+25;
U0=600;

%Two Slits.
hold on

%y4=[8 8 6 0 2 7 7 9 13 9 4 1 7 17 19 13 6 2 0 2 9 13 33 48 72 105 215 311 393 440 563 570 470 342 224 75 17 0 3 7 3 2 4 18 19 20 15 9 11 13 18 17 13 12 4 3 0 1 5 4];
y4=[7 6 3 3 1 5 4 9 14 8 7 2 8 12 15 10 6 3 0 2 13 19 34 43 67 95 178 295 361 417 503 504 427 322 198 72 18 23 0 8 7 2 2 12 21 27 16 7 6 14 16 15]'; 
%y4=log(y4+1);
x4=(200:10:800)'-500;
x4=x4(1:length(y4));

%{
F=@(n,x) n(1)*besselj(0,n(2)*x+n(3)).^2;
n0=[500 pi/100 0];
n = lsqcurvefit(F,n0,x4,y4)
plot(x4,F(n,x4))
%}

curve=fit(x4,y4,'smoothingspline');
plot(curve,x4,y4);
xlabel('X (cm)');
ylabel('Intensity (\muA)');
title('Intensity Distribution of Diffraction at a slit.');
hold off