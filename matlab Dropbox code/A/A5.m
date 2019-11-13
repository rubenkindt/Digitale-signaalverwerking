%Sebastian Van der Borght 4meii2 A5

%variabelen
A1 = 100;
f1 = 100;
A2 = 2;
f2 = 164.25;
n = 64;
npad = 512;
zpad = (0:(npad-n-1));
fs = 1000;
ts = 1/fs;
t = (0:(n-1))*ts;
df = (0:(n-1))*fs/n;
tpad = (0:(npad-1))*ts;
dfpad = (0:(npad-1))*fs/n;

%golfvorm in discrete tijdsdomein
xn = (A1*sin(2*pi*f1*t))+(A2*sin(2*pi*f2*t))+ randn(size(t));

%hamming window op zero padded signaal
windowpad = hamming(npad).*xn*npad';

%plot van hamming window op zero padded signaal
figure(3)
subplot(3,1,1)
plot(tpad, windowpad, 'k');
title('FFT spectral estimation: with interpolation by zero-padding');
xlabel('Time(sec)'), ylabel('Sampled X[t]')

%plot van fft op zero padded signaal met hamming window
subplot(3,1,2)
plot(dfpad, abs(fft(windowpad)),'k');
xlabel('Frequency(Hz)'), ylabel('FFT magnitude')

%plot van PSD van zero padded signaal met hamming window
subplot(3,1,3)
plot(dfpad, 20*log10(abs(fft(windowpad)/sum(hamming(npad)))), 'k');
xlabel('Frequency(Hz)'), ylabel('FFT magnitude(db)')

%hamming window op xn
window = hamming(n).*xn';

%golfvorm zero padding na hamming window
xnpad = [window' zeros(size(zpad))];

%plot van hamming window op xn en dan zero padding
figure(4)
subplot(3,1,1)
plot(tpad, xnpad, 'k');
title('FFT spectral estimation: with interpolation by zero-padding');
xlabel('Time(sec)'), ylabel('Sampled X[t]')

%plot fft van xn met hamming window en dan zero padding
subplot(3,1,2)
plot(dfpad, abs(fft(xnpad)),'k');
xlabel('Frequency(Hz)'), ylabel('FFT magnitude')

%plot PSD van xn met hamming window en dan zero padding
subplot(3,1,3)
plot(dfpad, 20*log10(abs(fft(xnpad)/sum(hamming(npad)))), 'k');
xlabel('Frequency(Hz)'), ylabel('FFT magnitude(db)')
