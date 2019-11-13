fs = 1000;
n= 64;
%Rechthoekig window (boxcar)
wR = rectwin(n);

Ts = 1/fs;
T=(n-1)*Ts;
t= 0:Ts:T;
x = 100*sin(2*pi*100*t) + 2* sin(2*pi*164.25*t) + randn;
stem(t,x)

figure
y = repmat(wR,1,n) .* x;
plot(y)

%PSD (Power Spectral Density)
figure
y = 20*log10(y);
plot(y)
title('PSD');
%Voeg achteraan aan de gesamplede data set nullen toe zodat de data set wordt uitgebreid tot 512 (
toevoeg = 512-length(x);
x2 =[ x zeros(1,toevoeg)];
length(x2)
y = 20*log10(x);
figure
plot(y)
title('PSD zeros');

%Hamming window (hamming) 
wH = hamming(n);

%Hamming op uitgebreide datase 512
y = repmat(wH,1,n) .* x2;
figure
plot(y)
%Hamming op oorspronkelijke dataset van 64 met interpolatie
%x3 =
