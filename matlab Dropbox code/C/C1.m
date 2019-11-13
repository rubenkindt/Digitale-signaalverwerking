%Sebastian Van der Borght 4meii2 C1

%variabelen
ts = 0.001;
fs = 1/ts;
fc = 200;
bw = 40;

%berekenen van r en theta
r = 1 - (bw/fs)*pi
theta = 360*fc/fs

%zero's van systeem
z = [1 0 -1];

%bereken van polen
p1 = r*exp(j*theta*(pi/180));
p2 = r*exp(j*-theta*(pi/180));

%maken van transferfuntie
p = [p1 p2];
p = poly(p)

%plot van zero en pool
figure(1)
zplane(z,p)
title('Z-plane of bandpassfilter with a1 = -0.54 and a2 = 0.76');

%plot van amplitude- en faseresponsie in het discrete frequentie domein
figure(2)
freqz(z,p)
title('Frequency response of bandpassfilter a1 = -0.54 and a2 = 0.76');