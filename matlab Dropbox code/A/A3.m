%Sebastian Van der Borght 4meii2 A3
close all;
%variabelen
A = 5;
f = 1000;
n = 64;
fs = 8000;
ts = 1/fs;
t = (0:(n-1))*ts;
df = (0:(n-1))*fs/n;
dfshift = df-fs/2;

%golfvorm in discrete tijdsdomein
xn = A*cos(2*pi*f*t);

%plot van golfvorm in discrete tijdsdomein
subplot(3,1,1)
stem(t, xn, 'k');
title('Fourier Transformatie');
xlabel('t(s)'), ylabel('sample x(n)')

%plot van fft 
subplot(3, 1, 2)
stem(df, abs(fft(xn)), 'k');
xlabel('f(Hz)'), ylabel('magnitude')

%plot van cft
subplot(3, 1, 3)
stem(dfshift, fftshift(abs(fft(xn))), 'k');
xlabel('f(Hz)'), ylabel('magnitude')