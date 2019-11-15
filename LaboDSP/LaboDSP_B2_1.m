clear all;
close all;

r=400;
p=4;
a1=1.905;
a2=1.21;

n=200;
Fs=r;
Ts=1/Fs;
t = (0:(n-1))*Ts;
df=(0:(n-1))*Fs/n;
ruis=rand(size(t));
%x=sin(2*pi*p*t)+ruis;
x=zeros(1,200);

y=filter([1,0,0],[1,a1,a2],x);
figure(1)
plot(y)
figure(2);
zplane([1,0,0],[1,a1,a2])
figure(3);
freqz([1,0,0],[1,a1,a2],n)
