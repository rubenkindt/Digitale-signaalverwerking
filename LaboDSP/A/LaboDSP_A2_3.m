ingang=[0 0 0 0 0 1 1 1 -1 1 0 0 0 0 0 0 -1 -1 -1 1 -1 0 0 0 0 0];
coef = [0 1 1 1 -1 1 0];

figure(5);
subplot(1,3,1);
stem(ingang);
title('ingang samples')
subplot(1,3,2);
stem(coef);
title('co�ffici�nten')
subplot(1,3,3);
conv1 = conv(ingang, coef);
stem(conv1);
title('convolutie van beide')

coef = [0 1 -1 1 1 1 0]

figure(6);
subplot(1,3,1);
stem(ingang);
title('ingang samples')
subplot(1,3,2);
stem(coef);
title('gespiegelde co�ffici�nten')
subplot(1,3,3);
conv1 = conv(ingang, coef);
stem(conv1);
title('convolutie van beide')
