%variabelen
n = 31;
fs = 5000;
ff = [0 400/(fs/2) 600/(fs/2) 900/(fs/2) 1100/(fs/2) 1];
aa = [0 0.0 1.0 1.0 0.0 0];

%berekenen van de filtercoefficienten
z = firpm(n, ff, aa);

%plot van amplitude- en faseresponsie in het discrete frequentie domein
figure(1)
freqz(z,1)
title('Frequency response of 31th order BDL');

%plot van 550 tot 950 Hz
ax = findall(gcf, 'Type', 'axes');
set(ax, 'Xlim', [550/(fs/2) 950/(fs/2)]);