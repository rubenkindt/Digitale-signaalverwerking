%Sebastian Van der Borght 4meii2 B3_1

%variabelen
fs = 8000;

%coefficienten van de zero
z = [1 0 0];

%coefficienten van de pool
p = [1 -1.45 1.04];

%plot van zero en pool
figure(1)
zplane(z,p)
title('Z-plane of second order recursive filter (IIR)');

%plot van amplitude- en faseresponsie in het discrete frequentie domein
figure(2)
freqz(z,p)
title('Frequency response of second order recursive filter (IIR)');

%Berekenen van DC weergave z = 1.
H_DC = 1/(1-1.45+1.04)

%Berekenen van poolfrequentie
(fs/360)*(angle(roots(p))*(180/pi))

%nieuwe coefficienten van de pool
p = [1 -1.358 0.922];

%plot van zero en pool
figure(3)
zplane(z,p)
title('Z-plane of second order recursive filter (IIR)');

%plot van amplitude- en faseresponsie in het discrete frequentie domein
figure(4)
freqz(z,p)
title('Frequency response of second order recursive filter (IIR)');

%transferfunctie met poly
p1 = 0.57*exp(j*45*(pi/180));
p2 = 0.57*exp(j*-45*(pi/180));
p = [p1 p2];
p = poly(p);

%plot van zero en pool
figure(5)
zplane(z,p)
title('Z-plane of second order recursive filter (IIR)');

%plot van amplitude- en faseresponsie in het discrete frequentie domein
figure(6)
freqz(z,p)
title('Frequency response of second order recursive filter (IIR)');