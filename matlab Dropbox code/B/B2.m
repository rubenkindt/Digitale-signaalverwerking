%Sebastian Van der Borght 4meii2 B2

%variabelen
%a1 = 0.1;
%a1 = 0.5;
%a1 = 0.9;
%a1 = 1;
a1 = 1.1;

%coefficienten van de zero
z = [1 0];

%coefficienten van de pool
p = [1 -a1];

%plot van zero en pool
figure(1)
zplane(z,p)
title('Z-plane of first order recursive filter (IIR)');

%plot van amplitude- en faseresponsie in het discrete frequentie domein
figure(2)
freqz(z,p)
title('Frequency response of first order recursive filter (IIR)');