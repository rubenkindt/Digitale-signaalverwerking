%Sebastian Van der Borght 4meii2 C3

%variabelen
bw = 40;
fc = 200;
r = 0.2;
fs = 1000;
n = 4;
wn = [((fc-(bw/2))/(fs/2)) ((fc+(bw/2))/(fs/2))];

%Berekenen van de filtercoefficienten
[z, p] = cheby1(n, r, wn);

%plot van zero en pool
figure(1)
zplane(z,p)
title('Z-plane of fourth order Chebyshev BDL ');

%plot van amplitude- en faseresponsie in het discrete frequentie domein
figure(2)
freqz(z,p)
title('Frequency response of fourth order Chebyshev BDL');

%plot van 100 tot 300 Hz
ax = findall(gcf, 'Type', 'axes');
set(ax, 'Xlim', [100/(fs/2) 300/(fs/2)]);

%Lezen van audio bestand
filename = 'C:\Users\Public\Music\Sample Music\Kalimba.mp3';
[x] = audioread(filename);

%filteren van audio
[y] = filter(z, p, x);

%afspelen van geluid
sound(y);