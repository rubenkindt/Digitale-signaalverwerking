%Sebastian Van der Borght 4meii2 B1

%variabelen
%a1 = 0.1;
%a1 = 0.5;
%a1 = 0.9;
%a1 = 1;
a1 = 1.1;
n = 200;
f = 100;
fs = 10000;
ts = 1/fs;
t = (0:(n-1))*ts;
yn = zeros(1,n);

%data set van 200 maal 1
xn = ones(1,n);

%berekenen van waardes
yn(1) = xn(1);
for i = 2:n
    yn(i) = xn(i)+a1*yn(i-1);
end

%plot y(n) met x(n) 200 maal 1
figure(1)
subplot(1,1,1)
plot(yn, 'k');
title('Effect of a first order recursive filter (IIR)');
xlabel('sample(n)'), ylabel('output signal Y[n]')

%golfvorm met ruis
xn = sin(2*pi*f*t) + rand(size(t));

%berekenen van waardes
yn(1) = xn(1);
for i = 2:n
    yn(i) = xn(i)+a1*yn(i-1);
end

%plot x(n)
figure(2)
subplot(2,1,1)
plot(xn, 'k');
title('Effect of a first order recursive filter (IIR)');
xlabel('sample(n)'), ylabel('input signal X[n]')

%plot y(n)
subplot(2,1,2)
plot(yn, 'k');
xlabel('sample(n)'), ylabel('output signal Y[n]')