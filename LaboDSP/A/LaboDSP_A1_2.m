a=6;
b=11;
p=440;
q=880;
r=8800;
n=128;
times=10;
close all;

Fs = r;
t = 0:1/Fs:1-1/Fs;
Ts= 1/Fs;
Tend=(n-1)*Ts;
X = a*sin(2*pi*p*t)+b*cos(2*pi*q*t);


figure
Y = linspace(0,Tend);
hold on
stem(t(1:n),X(1:n));

Fs = r*times;
t = 0:1/Fs:1-1/Fs;
Ts= 1/Fs;
Tend=(n-1)*Ts;
X = a*sin(2*pi*p*t)+b*cos(2*pi*q*t);

plot(t(1:n*times),X(1:n*times));
hold off
title('the sampled waveform vs "continuous wave"')
xlabel('time')
ylabel('Amplitude')

