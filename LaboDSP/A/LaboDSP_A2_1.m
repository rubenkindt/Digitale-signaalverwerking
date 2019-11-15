clear all;
close all;
samples1 = [0 0 0 1 1 1 1 1 1];
samples2 = [0 0 0 1 0 0 0 0 0];
samples3 = [0 0 0 1 0 0 0 0 1 0 0 0];
samples4 = [0 0 0 1 1 1 1 1 1 0 0 0];
coef = [0.5 0.25 0.125];

figure(1);
subplot(1,3,1);
stem(samples1);
title('gesamplede functie 1')
subplot(1,3,2);
stem(coef);
title('set eenvoudige coëfficiënten ')
subplot(1,3,3);
conv1 = conv(samples1, coef);
stem(conv1);
title('convolutie van beide')

figure(2);
subplot(1,3,1);
stem(samples2);
title('gesamplede functie 2')
subplot(1,3,2);
stem(coef);
title('set eenvoudige coëfficiënten ')
subplot(1,3,3);
conv1 = conv(samples2, coef);
stem(conv1);
title('convolutie van beide')

figure(3);
subplot(1,3,1);
stem(samples3);
title('gesamplede functie 3')
subplot(1,3,2);
stem(coef);
title('set eenvoudige coëfficiënten ')
subplot(1,3,3);
conv1 = conv(samples3, coef);
stem(conv1);
title('convolutie van beide')

figure(4);
subplot(1,3,1);
stem(samples4);
title('gesamplede functie 4')
subplot(1,3,2);
stem(coef);
title('set eenvoudige coëfficiënten ')
subplot(1,3,3);
conv1 = conv(samples4, coef);
stem(conv1);
title('convolutie van beide')

