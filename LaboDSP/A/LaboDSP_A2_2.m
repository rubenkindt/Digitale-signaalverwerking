clear all;
close all;
samples1 = [0 0 0 1 1 1 1 1 1];
samples2 = [0 0 0 1 0 0 0 0 0];
samples3 = [0 0 0 1 0 0 0 0 1 0 0 0];
samples4 = [0 0 0 1 1 1 1 1 1 0 0 0];
coef = [1/3 1/3 1/3];

figure(5);
subplot(1,3,1);
stem(samples1);
title('gesamplede functie 1')
subplot(1,3,2);
stem(coef);
title('veranderde coëfficiënten naar 1/3')
subplot(1,3,3);
conv1 = conv(samples1, coef);
stem(conv1);
title('convolutie van beide')

figure(6);
subplot(1,3,1);
stem(samples2);
title('gesamplede functie 2')
subplot(1,3,2);
stem(coef);
title('veranderde coëfficiënten naar 1/3')
subplot(1,3,3);
conv1 = conv(samples2, coef);
stem(conv1);
title('convolutie van beide')

figure(7);
subplot(1,3,1);
stem(samples3);
title('gesamplede functie 3')
subplot(1,3,2);
stem(coef);
title('veranderde coëfficiënten naar 1/3')
subplot(1,3,3);
conv1 = conv(samples3, coef);
stem(conv1);
title('convolutie van beide')

figure(8);
subplot(1,3,1);
stem(samples4);
title('gesamplede functie 4')
subplot(1,3,2);
stem(coef);
title('veranderde coëfficiënten naar 1/3')
subplot(1,3,3);
conv1 = conv(samples4, coef);
stem(conv1);
title('convolutie van beide')


