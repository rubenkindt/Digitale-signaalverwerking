%Sebastian Van der Borght 4meii2 A4

%variabelen
A1 = 1;
f1 = 1062.5;
A2 = 0.05;
f2 = 1125;
n = 64;
fs = 8000;
ts = 1/fs;
t = (0:(n-1))*ts;
df = (0:(n-1))*fs/n;
nfft = 1024;
ndfshift = (0:(nfft-1))*fs/n;

%golfvorm in discrete tijdsdomein
xn = (A1*sin(2*pi*f1*t))+(A2*sin(2*pi*f2*t));

%window functies;
%wbox = rectwin(n);
%wbox = hann(n);
wbox = hamming(n);

%plot van window functies in tijdsdomein
figure(1)
subplot(2,1,1)
stem(wbox, 'k');
title('Spectral analysis using different types of window function');
xlabel('Discrete Time index(n)'), ylabel('windowed coef')

%plot van window functies in frequentiedomein 
subplot(2, 1, 2)
plot(ndfshift, 20*log10(abs(fftshift(fft(wbox, nfft)/sum(wbox)))), 'k');
xlabel('Digital Frequency (F)'), ylabel('Normalized Magnitude (db)')

%plot van golfvorm in discrete tijdsdomein
figure(2)
subplot(3, 1, 1)
stem(t, xn, 'k');
title('Spectral analysis using windowing');
xlabel('t(s)'), ylabel('sample x(n)')

%plot van fft zonder window
subplot(3, 1, 2)
stem(df, abs(fft(xn)), 'k');
xlabel('f(Hz)'), ylabel('magnitude')

%windowing
window = wbox.*xn';

%plot van fft met window
subplot(3, 1, 3)
stem(df, abs(fft(window)), 'k');
xlabel('f(Hz)'), ylabel('magnitude')