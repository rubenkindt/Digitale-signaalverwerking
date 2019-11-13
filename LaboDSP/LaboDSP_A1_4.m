close all;
clear all;
a=6;
b=11;
p=440;
q=880;
r=8800;
n=128;
times=10;

Fs = r;
t = 0:1/Fs:1-1/Fs;
Ts= 1/Fs;
Tend=(n-1)*Ts;
X = a*sin(2*pi*p*t)+b*cos(2*pi*q*t);

figure
Y = linspace(0,Tend);
hold on


Fs = r*times;
t = 0:1/Fs:1-1/Fs;
Ts= 1/Fs;
Tend=(n-1)*Ts;
X = a*sin(2*pi*p*t);
X_norm=(X-min(X))/(max(X)-min(X));

b=2;
xq=floor((X_norm)*(2^b-1));   
xe=abs((X_norm*(2^b-1))-xq);                   

hold on
plot(t(1:n*times),X_norm(1:n*times)*(2^b-1));
plot(t(1:n*times),xq(1:n*times));
plot(t(1:n*times),xe(1:n*times));
title('Quantisation,Quantisation,fault and the continuous wave')
xlabel('time')
ylabel('Amplitude')
hold off
xrms=[];
for n = 2:8
    b=n;
    xq=floor((X_norm)*(2^b-1));   
    xe=abs((X_norm)-(xq/(2^b-1)));                   
    xrms=[xrms;rms(xe)];
end
figure(2)
plot((2:8),xrms);
title('RMS value plotted vs # bits used');
xlabel('bits');
ylabel('RMS fout');