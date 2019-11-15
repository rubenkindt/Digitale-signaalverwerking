clear all;
close all;
r=8000;
n=64;
p=1000;
a=62.5;
b=62.5;
c=250;
d=125;

Fs=r;
Ts=1/Fs;
t = (0:(n-1))*Ts;
df=(0:(n-1))*Fs/n;
ndfshift = (0:(1023))*Fs/n;

%x = sin(2*pi*p*t);
%x = sin(2*pi*(p+a)*t);
%x = sin(2*pi*p*t)+0.5*sin(2*pi*(p+b)*t);
x = sin(2*pi*p*t)+0.5*sin(2*pi*(p+c)*t);
%x = sin(2*pi*(p+d)*t)+0.5*sin(2*pi*(p+b)*t);
%x = sin(2*pi*(p+d)*t)+0.5*sin(2*pi*(p+c)*t);

window = rectwin(n);
%window=hann(n);
%window=hamming(n);

%plot van golfvorm in discrete tijdsdomein
figure(1)
subplot(3, 1, 1)
title('Spectral analysis using windowing');
stem(t, x);
xlabel('t(s)')
ylabel('n')

%plot van fft
subplot(3, 1, 2)
title('fft zonder het window');
stem(df, abs(fft(x)));
xlabel('f(Hz)')
ylabel('magnitude')

%windowing
windowedSin=window.*x';

%plot van fft met window
subplot(3, 1, 3)
title('fft zonder MET window');
stem(df, abs(fft(windowedSin)));
xlabel('f(Hz)')
ylabel('magnitude')