%Sebastian Van der Borght 4meii2 C2

%variabelen
fs = 2;
wn = 0.16*2*pi;
fp = wn/(2*pi);
z = [1 3 3 1];
p = [105 -213 155 -39];

%plot van zero en pool
figure(1)
zplane(z,p)
title('Z-plane of third order Butterworth LP ');

%plot van amplitude- en faseresponsie in het discrete frequentie domein
figure(2)
freqz(z,p)
title('Frequency response of third order Butterworth LP');

[H_N, H_D] = butter(3, wn, 's');

[z, p] = bilinear(H_N, H_D, fs, fp);

%plot van zero en pool
figure(3)
zplane(z,2)
title('Z-plane of third order Butterworth LP ');

%plot van amplitude- en faseresponsie in het discrete frequentie domein
figure(4)
freqz(z,p)
title('Frequency response of third order Butterworth LP');
