clc
clear
%inductive y-axis
%x=10:0.2:24;
hold on
x1 = (12:0.1:21)';
y1 = [0.031 0.028 0.026 0.023 0.031 0.040 0.051 0.063 .076 0.088 0.096 0.102 0.104 0.105 0.102 0.104 0.105 0.102 0.096 0.086 0.073 0.059 0.045 0.040 0.041 0.052 0.068 0.084 0.095 0.100 0.101 0.104 0.121 0.149 0.201 0.268 0.343 0.414 0.487 0.554 0.618 0.656 0.680 0.693 0.696 0.686 0.682 0.618 0.555 0.475 0.418 0.354 0.305 0.268 0.233 0.196 0.155 0.110 0.070 0.040 0.021 0.016 0.022 0.036 0.055 0.074 .088 0.102 0.110 0.113 0.117 0.118 0.116 0.109 0.099 0.086 0.072 0.059 0.049 0.042 0.040 0.039 0.037 0.032 0.024 0.018 0.014 0.015 0.030 0.027 0.033]';
%y=[0.014 0.014 0.037 0.056 0.045 0.028 0.031 0.047 0.055 0.053 0.049 0.047 0.036 0.026 0.055 0.083 0.073 0.056 0.075 0.115 0.125 0.098 0.090 0.118 0.106 0.050 0.118 0.125 0.317 0.401 0.386 0.441 0.537 0.579 0.548 0.567 0.532 0.516 0.468 0.343 0.252 0.258 0.220 0.106 0.038 0.064 0.086 0.075 0.080 0.104 0.116 0.080 0.037 0.038 0.044 0.028 0.018 0.032 0.048 0.052 0.064 0.063 0.057 0.035 0.021 0.019 0.019 0.013     ];
%y=[0.017 0.026 0.029 0.026 0.023 0.020 0.014 0.008 0.003 0.005 0.013 0.021 0.026 0.030 0.037 0.045 0.048 0.045 0.045 0.042 0.030 0.012 0.013 0.047 0.098 0.135 0.171 0.222 0.278 0.317 0.315 0.292 0.254 0.189 0.122 0.063 0.039 0.043 0.046 0.034 0.022 0.027 0.039 0.043 0.041 0.040 0.034 0.022 0.013 0.011 0.015 0.018 0.020 0.018 0.014 0.014 0.016];
x1=x1(1:length(y1));
curve=fit(x1,y1,'smoothingspline');
plot(curve,x1,y1)
xlabel('X (cm)');
ylabel('Intensity (mA)');
title('Inductive Grid: X-axis');
hold off
%inductive x-axis

figure()
hold on
x2=(4:0.1:14)';
y2=[26 26 23 27 32 37 40 39 37 31 26 24 27 34 50 69 87 104 114 121 128 132 133 130 123 111 97 83 73 71 79 93 108 119 122 118 112 123 151 206 266 350 431 494 548 591 623 651 670 675 666 645 612 573 522 470 429 387 343 298 244 185 127 75 34 14 17 36 67 92 114 116 112 104 98 100 98 101 102 100 95 88 81 74 67 61 51 43 35 27 20 14 11 10 13 22 32 42 44 47]';
%y1 = [0.016 0.010 0.011 0.014 0.014 0.007 0.002 0.006 0.017 0.039 0.059 0.065 0.061 0.046 0.025 0.019 0.034 0.050 0.042 0.034 0.055 0.120 0.198 0.256 0.291 0.296 0.274 0.221 0.167 0.167 0.142 0.126 0.079 0.029 0.007 0.019 0.047 0.064 0.062 0.058 0.054 0.049 0.036 0.030 0.029 0.026 0.017 0.003 0.004 0.009 0.014 0.019];
x2=x2(1:length(y2));
curve=fit(x2,y2,'smoothingspline');
plot(curve,x2,y2)
xlabel('Y (cm)');
ylabel('Intensity (\muA)');
title('Inductive Grid: Y-axis');
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
