clc
clear
hold on
x1=(12:0.1:22)';
y1=[69 69 65 59 55 53 57 65 80 91 98 105 108 110 112 112 110 107 101 93 88 84 83 80 75 64 48 35 34 53 94 156 238 325 416 522 614 729 837 954 1050 1150 1223 1259 1257 1193 1120 1038 957 885 798 703 580 467 330 237 153 99 73 68 66 71 71 68 67 72 88 111 132 147 158 163 165 161 153 142 128 109 90 70 58 52 52 52 51 47 40 31 23 19 21]';
%y=[92 103 112 118 120 127 128 135 138 142 138 138 134 130 123 115 98 87 69 58 53 53 57 23 25 28 30 38 60 106 162 239 347 433 499 580 621 712 784 826 835 873 814 787];
x1=x1(1:length(y1));
curve=fit(x1,y1,'smoothingspline');
plot(curve,x1,y1)
xlabel('X (cm)');
ylabel('Intensity (\muA)');
title('Capacitive Grid: X-axis');
hold off
%{
hold on
figure()
%capacitive y-axis
x1=8:0.1:18;
y1=[0.025 0.029 0.033 0.045 0.062 0.076 0.084 0.087 0.087 0.080 0.075 0.069 0.064 0.062 0.056 0.041 0.024 0.016 0.017 0.030 0.052 0.074 0.082 0.072 0.059 0.040 0.032 0.034 0.044 0.056 0.068 0.075 0.084 0.093 0.102 0.100 0.085 0.066 0.070 0.107 0.175 0.241 0.265 0.242 0.191 0.156 0.174 0.275 0.420 0.569 0.681 0.770 0.832 0.890 0.961 1.046 1.123 1.171 1.157];
x1=x1(1:length(y1));
curve=fit(x1',y1','smoothingspline');
plot(curve,x1,y1)
hold off
%}

hold on
figure()
x2 = (2:0.1:12)';
y2 = [0.030 0.035 0.040 0.043 0.045 0.049 0.051 0.056 0.055 0.052 0.049 0.044 0.036 0.032 0.034 0.039 0.040 0.032 0.023 0.027 0.045 0.066 0.084 0.094 0.102 0.108 0.117 0.123 0.116 0.102 0.087 0.080 0.096 0.117 0.132 0.121 0.086 0.065 0.083 0.150 0.246 0.333 0.398 0.438 0.511 0.595 0.714 0.834 0.922 0.968 0.992 0.963 0.925 0.883 0.840 0.782 0.696 0.581 0.412 0.261 0.148 0.099 0.103 0.126 0.132 0.109 0.070 0.044 0.049 0.075 0.101 0.114 0.111 0.099 0.089 0.088 0.093 0.095 0.089 0.068 0.049 0.034 0.028 0.030 0.032 0.029 0.023 0.022 0.030 0.046 0.055 0.055 0.046 0.037 0.031 0.030 0.032 0.036 0.038 0.039 0.035]';
x2=x2(1:length(y2));
curve=fit(x2,y2,'smoothingspline');
plot(curve,x2,y2)
xlabel('Y (cm)');
ylabel('Intensity (mA)');
title('Capacitive Grid: Y-axis');
hold off

figure()
n1=length(y1);
n2=length(y2);
XY=zeros(n1,n2);
for i=1:n1
    for j=1:n2
        XY(i,j)=y1(i)*y2(j);
    end
end
imagesc(XY);
