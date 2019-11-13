a=6;
b=11;
p=440;
q=880;
r=8800;
n=128;
times=10;
close all;
digF=[0 1/10 1/4 1/2 3/4 9/10 1 11/10 5/4 3/2 7/4 19/10 2];

hold off
for i = 1:length(digF)
    figure(i)
    Fs = digF(i);
    t = 0:(n-1);%1/Fs:1-1/Fs;
    Ts= 1/Fs;
    Tend=(n-1)*Ts;
    X = a*sin(2*pi*Fs*t);
    stem(t(1:n),X(1:n));
    title(['Digitale frequentie: ' num2str(digF(i))])
    xlabel('time')
    ylabel('Amplitude')
end


