clear all;
close all;
n=64;

Fs=1000;
Ts=1/Fs;
t = (0:(n-1))*Ts;
zpad = (0:(512-n-1));
td=(0:(512-1))*Ts;
ndfshift = (0:(1023))*Fs/n;

noise=randn();
x=100*sin(2*pi*100*t)+2*sin(2*pi*164.25*t)+1*noise;
toevoeg = 512-length(x);
x2 =[ x zeros(1,toevoeg)];


figure(1)
subplot(3, 1, 1)
stem(x2);
title('sampled wave with added "0"s');
xlabel('t(s)')
ylabel('n')

window = hamming(512);
windowX=window.*x2';
df=(0:(512-1))*Fs/512;

subplot(3, 1, 2)
stem(df,abs(fft(windowX)));
title('Hamming');
xlabel('Frequency (F)')
ylabel('magnitude')


subplot(3, 1, 3)
stem(df,20*log10(abs(fft(windowX))));
title('power spectral density');
xlabel('Frequency (F)')
ylabel('db')



figure(2)
subplot(3, 1, 1)
stem(x2);
title('sampled wave with n=64');
xlabel('t(s)')
ylabel('n')

window = hamming(n);
windowX=window.*x';
xpad=[windowX' zeros(size(zpad))];

df=(0:(512-1))*Fs/512;

subplot(3, 1, 2)
stem(df,abs(fft(xpad)));
title('Hamming');
xlabel('Frequency (F)')
ylabel('magnitude')


subplot(3, 1, 3)
stem(df,20*log10(abs(fft(xpad))));
title('power spectral density');
xlabel('Frequency (F)')
ylabel('db')

