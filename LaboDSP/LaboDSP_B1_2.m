clear all;
close all;

r=400;
p=4;
n=200;
Fs=r;
Ts=1/Fs;
t = (0:(n-1))*Ts;
df=(0:(n-1))*Fs/n;
ruis=rand(size(t));
x=sin(2*pi*p*t)+ruis;

a1=[-0.1 -0.5 -0.9 -1.0 -1.1];
ones=ones(1,n);

for i=1:5
    y=filter(1,[1,a1(i)],x);
    figure(i)
    hold on;
    plot(y)
    plot(x)
    legend('filter','sin wave with noice');
    hold off;
end