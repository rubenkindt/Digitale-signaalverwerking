fs=4000;
p=500;
a=2;
n = 64;


Ts = 1/fs;
T=(n-1)*Ts;
t= 0:Ts:T;
x = a*cos(2*pi*p*t);
figure
title('discrete tijdsdomein cos')
stem(t,x)

%Fast Fourier Transformatie
X = fft(x);
f =(0:length(y)-1)*100/length(y);
figure
plot(abs(X));
xlabel('Frequency (Hz)');ylabel('Amplitude')

figure
plot(f,abs(X));
xlabel('Frequency (Hz)');ylabel('Amplitude')

%Spectraalgrafiek
X2 = fftshift(x);
figure
plot(abs(X2));

F = [p+12.5 p+37.5 p+62.5];
for p=1:3
    x = a*cos(2*pi*F(p)*t);
    X3 = fft(x);
    figure
    plot(abs(X3));
    xlabel('Frequency (Hz)');ylabel('Amplitude')
end


