%variabelen
fc = 250;
fs = 1000;
wn = fc/(fs/2);
n = 14;
win = hamming(n+1);

%berekenen van de filtercoefficienten
[z, p] = fir1(n, wn, win);

%plot van amplitude- en faseresponsie in het discrete frequentie domein
figure(1)
freqz(z,p)
title('Frequency response of 14th order causal LDL');