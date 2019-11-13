clear all;
close all;
a=5;
r=8000;	
p=1000;

n=64;

Fs=r;
Ts=1/Fs
t = (0:(n-1))*Ts;
freq=(0:(n-1))*Fs/n;
freq_shift = freq-(Fs/2);
cos_wave=a*cos(2*pi*p*t);

figure(1);
subplot(3,1,1);
stem(t,cos_wave);
title('sampled cos wave at 1000 Hz')
xlabel('time')
ylabel('Amplitude')

subplot(3,1,2);
stem(freq,fft(cos_wave));
title('fft')
xlabel('fequency')
ylabel('magnitude')

subplot(3,1,3);
stem(freq_shift,fftshift(fft(cos_wave)));
title('shift fft')
xlabel('fequency')
ylabel('magnitude')


Fs=r
Ts=1/Fs
t = (0:(n-1))*Ts;
freq=(0:(n-1))*Fs/n;
freq_shift = freq-(Fs/2);
cos_wave=a*cos(2*pi*(p+12.5)*t);

figure(2);
subplot(3,1,1);
stem(t,cos_wave);
title('sampled cos wave at 1012.5 Hz')
xlabel('time')
ylabel('Amplitude')

subplot(3,1,2);
stem(freq,fft(cos_wave));
title('fft')
xlabel('fequency')
ylabel('magnitude')

subplot(3,1,3);
stem(freq_shift,fftshift(fft(cos_wave)));
title('shift fft')
xlabel('fequency')
ylabel('magnitude')

Fs= r
Ts=1/Fs
t = (0:(n-1))*Ts;
freq=(0:(n-1))*Fs/n;
freq_shift = freq-(Fs/2);
cos_wave=a*cos(2*pi*(p+37.5)*t);

figure(3);
subplot(3,1,1);
stem(t,cos_wave);
title('sampled cos wave at 1037.5 Hz')
xlabel('time')
ylabel('Amplitude')

subplot(3,1,2);
stem(freq,fft(cos_wave));
title('fft')
xlabel('fequency')
ylabel('magnitude')

subplot(3,1,3);
stem(freq_shift,fftshift(fft(cos_wave)));
title('shift fft')
xlabel('fequency')
ylabel('magnitude')

Fs = r
Ts=1/Fs
t = (0:(n-1))*Ts;
freq=(0:(n-1))*Fs/n;
freq_shift = freq-(Fs/2);
cos_wave=a*cos(2*pi*(p+62.5)*t);

figure(4);
subplot(3,1,1);
stem(t,cos_wave);
title('sampled cos wave at 1062.5 Hz')
xlabel('time')
ylabel('Amplitude')

subplot(3,1,2);
stem(freq,fft(cos_wave));
title('fft')
xlabel('fequency')
ylabel('magnitude')

subplot(3,1,3);
stem(freq_shift,fftshift(fft(cos_wave)));
title('shift fft')
xlabel('fequency')
ylabel('magnitude')
