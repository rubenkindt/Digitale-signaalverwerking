%variabelen
fc = 300;
fs = 4000;
wn = fc/(fs/2);
n = 8;
rp = 0.5;
rs = 50;

%berekenen van de filtercoefficienten
[z, p] = ellip(n, rp, rs, wn);

%plot van zero en pool
figure(1)
zplane(z,p)
title('Z-plane of eight order Cauer LDL ');

%plot van amplitude- en faseresponsie in het discrete frequentie domein
figure(2)
freqz(z,p)
title('Frequency response of eight order Cauer LDL');

%coefficientnauwkeurigheid met 16, 6 en 5 digits
%digit = 16;
%digit = 6;
digit = 5;
z = round(z*(10^digit))/(10^digit);
p = round(p*(10^digit))/(10^digit);

%plot van zero en pool met bepaald aantal digits
figure(3)
zplane(z,p)
title('Z-plane of eight order Cauer LDL ');

%plot van amplitude- en faseresponsie in het discrete frequentie domein met
%bepaald aantal digits
figure(4)
freqz(z,p)
title('Frequency response of eight order Cauer LDL');

%plot van amplitude response tussen 0 en 2 kHz en tussen 20 en -80 dB
ylim([-80 20]);

%berekenen van de polen
r = abs(roots(p))
theta = angle(roots(p))*(180/pi)

%impuls responsie met bepaald aantal digits
figure(5)
dimpulse(z, p)
title('Impulse response of eight order Cauer LDL');