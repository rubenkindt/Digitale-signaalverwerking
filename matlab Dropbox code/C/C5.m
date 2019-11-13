%variabelen
fc = 300;
fs = 4000;
ts = 1/fs;
wn = fc/(fs/2);
n = 8;
rp = 0.5;
rs = 50;

%berekenen van de filtercoefficienten
[z, p] = ellip(n, rp, rs, wn);

%omzetten naar cascade van 2de orde trappen
zp = zp2sos(roots(z), roots(p));
z1 = [zp(1,1) zp(1,2) zp(1,3)];
p1 = [zp(1,4) zp(1,5) zp(1,6)];
z2 = [zp(2,1) zp(2,2) zp(2,3)];
p2 = [zp(2,4) zp(2,5) zp(2,6)];
z3 = [zp(3,1) zp(3,2) zp(3,3)];
p3 = [zp(3,4) zp(3,5) zp(3,6)];
z4 = [zp(4,1) zp(4,2) zp(4,3)];
p4 = [zp(4,4) zp(4,5) zp(4,6)];

%aanpassen van coefficientnauwkeurigheid
digit = 2;
z1 = round(z1*(10^digit))/(10^digit);
p1 = round(p1*(10^digit))/(10^digit);
z2 = round(z2*(10^digit))/(10^digit);
p2 = round(p2*(10^digit))/(10^digit);
z3 = round(z3*(10^digit))/(10^digit);
p3 = round(p3*(10^digit))/(10^digit);
z4 = round(z4*(10^digit))/(10^digit);
p4 = round(p4*(10^digit))/(10^digit);

%terug omzetting

Z = tf(z1, p1, ts)* tf(z2, p2, ts) * tf(z3, p3, ts) * tf(z4, p4, ts)

%plot van zero en pool met bepaald aantal digits
figure(1)
zplane(z, p)
title('Z-plane of eight order Cauer LDL ');

%plot van amplitude- en faseresponsie in het discrete frequentie domein met
%bepaald aantal digits
figure(2)
freqz(z,p)
title('Frequency response of eight order Cauer LDL');

%plot van amplitude response tussen 0 en 2 kHz en tussen 20 en -80 dB
ylim([-80 20]);

%berekenen van de polen
r = abs(roots(p))
theta = angle(roots(p))*(180/pi)

%impuls responsie met bepaald aantal digits
figure(3)
dimpulse(z, p)
title('Impulse response of eight order Cauer LDL');