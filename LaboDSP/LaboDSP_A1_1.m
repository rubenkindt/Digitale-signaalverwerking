a=6;
b=11;
p=440;
q=880;
r=8800;
n=128;
close all;

Fs = r;
t = 0:1/Fs:1-1/Fs;
Ts= 1/Fs;
Tend=(n-1)*Ts;
X = a*sin(2*pi*p*t)+b*cos(2*pi*q*t);

figure
Y = linspace(0,Tend);
stem(t(1:n),X(1:n))
%plot(t, x);
title('the sampled waveform')
xlabel('time')
ylabel('Amplitude')

%Y=fft(x);
%plot(Y) 
%title('Single-Sided Amplitude Spectrum of X(t)')
%xlabel('f (Hz)')
%ylabel('|P1(f)|')


