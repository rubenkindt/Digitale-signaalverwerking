%Sebastian Van der Borght 4meii2 A1

%variabelen
A = 5;
f = 1000;
fs = 10000;
ts = 1/fs;
n = 32;
F = f/fs;
t = (0:(n-1))*ts;
bits = 3;

%golfvorm in discrete tijdsdomein
xn = A*sin(2*pi*f*t);

%10 keer meer samples
t10 = (0: (n*10-1))*(ts/10);

%golfvorm in continue tijdsdomein
x10=A*sin(2*pi*f*t10);

%plot van golfvorm in discrete tijdsdomein
subplot(3,1,1)
stem(t, xn, 'k');
title('Sampling Aliasing & Quantisation');
xlabel('t(s)'), ylabel('sample x(n)')

%plot van golfvorm in continue tijdsdomein
subplot(3,1,2)
plot(t10, x10, 'b');
xlabel('t(s)'),ylabel('sample x(n)')

%plot van quantisatie
xq = xn / ((2*A)/(2^bits));
xq = fix(xq);
xq = xq * ((2*A)/(2^bits));
subplot(3, 1,3)
stem(t, xq, 'k');
xlabel('t(s)'),ylabel('sample x(n)')