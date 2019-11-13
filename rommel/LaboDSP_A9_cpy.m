clear all;
close all;
a=5;
r=8000;	
p=1000;

n=64;
Fs=r;

t = 0:1/Fs:1-1/Fs;
cos_wave=a*cos(2*pi*p*t);
fastfft=fft(cos_wave);
fastshift=fftshift(cos_wave);


figure(1);
stem(t(1:n),cos_wave(1:n));
xlabel('time')
ylabel('Amplitude')

figure(2);
stem(t(1:n),fastfft(1:n));
xlabel('fequency')
ylabel('Amplitude')

figure(3);
stem(t(1:n),fastshift(1:n));
xlabel('fequency')
ylabel('Amplitude')