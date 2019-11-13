%Sebastian Van der Borght 4meii2 B3_2

%variabelen
n = 200;
fs = 8000;
f = 100;
ts = 1/fs;
t = (0:(n-1))*ts;

%coefficienten van de zero
z = [1 0 0];

%coefficienten van de pool
p = [1 -1.45 1.04];

%golfvorm uit opdracht B1
xn = sin(2*pi*f*t) + rand(size(t));

%filteren van golfvorm
yn = filter(z, p, xn);

%plot van zero en pool
figure(1)
zplane(z,p)
title('Z-plane of second order recursive filter (IIR)');

%plot van amplitude- en faseresponsie in het discrete frequentie domein
figure(2)
freqz(z,p)
title('Frequency response of second order recursive filter (IIR)');

%plot y(n) in het discrete tijdsdomein
figure(3)
plot(yn, 'k');
title('Effect of a second order recursive filter (IIR)');
xlabel('sample(n)'), ylabel('output signal Y[n]')