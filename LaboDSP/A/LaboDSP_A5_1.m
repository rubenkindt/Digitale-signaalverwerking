clear all;
close all;
n=64;

Fs=1000;
Ts=1/Fs;
t = (0:(n-1))*Ts;
df=(0:(n-1))*Fs/n;
ndfshift = (0:(1023))*Fs/n;

noise=randn();
x=100*sin(2*pi*100*t)+2*sin(2*pi*164.25*t)+1*noise;

figure(1)
subplot(3, 1, 1)
stem(x);
title('sampled wave');
xlabel('t(s)')
ylabel('n')

window = rectwin(n);
windowX=window.*x';

subplot(3, 1, 2)
plot(df,abs(fft(windowX)));
title('Boxcar');
xlabel('Frequency (F)')
ylabel('magnitude')


subplot(3, 1, 3)
stem(df,20*log10(abs(fft(windowX))));
title('power spectral density');
xlabel('Frequency (F)')
ylabel('db')
