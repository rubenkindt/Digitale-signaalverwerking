clear all;
close all;
r=8000
n=64
p=1000
a=62.5
b=62.5
c=250
d=125

Fs=r;
Ts=1/Fs
t = (0:(n-1))*Ts;
df=(0:(n-1))*Fs/n;
ndfshift = (0:(1023))*Fs/n;

%geen funtie boxcar gevonden, wel doorverwezen naar dit
%goed voor resolutie, ramp bij spectral leakage
rectw= rectwin(n);
figure(1)
subplot(2,1,1)
stem(rectw);
title('Discrete Time of rectWin');
xlabel('n)')
ylabel('Amplitude')

subplot(2, 1, 2)
plot(ndfshift, 20*log10(abs(fftshift(fft(rectw, 1024)/sum(rectw)))));
xlabel('Frequency (F)')
ylabel('db')

%eigenlijk een cos, dus geen discontinuiteiten
han= hann(n);
figure(2)
subplot(2,1,1)
stem(han);
title('Discrete Time of han');
xlabel('n)')
ylabel('Amplitude')

subplot(2, 1, 2)
plot(ndfshift, 20*log10(abs(fftshift(fft(han, 1024)/sum(han)))));
xlabel('Frequency (F)')
ylabel('db')

%hoogte van de zijlob wordt goed onderdrukt, mindersnelle afnamen van de
%zijlobs
hamming=hamming(n);
figure(3)
subplot(2,1,1)
stem(hamming);
title('Discrete Time of han');
xlabel('n)')
ylabel('Amplitude')

subplot(2, 1, 2)
plot(ndfshift, 20*log10(abs(fftshift(fft(hamming, 1024)/sum(hamming)))));
xlabel('Frequency (F)')
ylabel('db')