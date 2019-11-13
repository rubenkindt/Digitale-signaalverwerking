%-----------------Birte De Smedt---------------
a = 13;
b=8;
p=600;
q=1000;
r=12000;
n=128;
fs = r; %Hz
Ts = 1/fs;
T=(n-1)*Ts;
t= 0:Ts:T;
x = a*sin(2*pi*p*t) + b * cos(2*pi*q*t);
figure
title('golfvorm sin en cos')
stem(t,x)

%tweede plot: 10 keer hoger samplen
t= 0:Ts/10:T;
x2 = a*sin(2*pi*p*t) + b * cos(2*pi*q*t);
hold on
plot(t,x2)

%golfvorm met maar één enkele component: x(t) = a sin(2?ft).
%Verander enkel de frequentie f zodanig dat volgende situaties worden uitgetest :
%F=f/fs => f = F*fs
f=[0 1/10 1/4 1/2 3/4 9/10 1 11/10 5/4 3/2 7/4 19/10 2]*fs;
hold off

s=13;
t=0:Ts:T;
for c=1:s
    
    x3 = a*sin(2*pi*f(c)*t);
    title(['fs=' num2str(f(c))])
    figure
    plot(t,x)
end

%kwantisatieFout plotten

b=4; %aantal bits
N=128;                          % Number of samples in final signal.
n=0:(N-1);                      %index
x = a*sin(2*pi*n/N);
%normaliseren tussen 0 en 1 door middel van min en max te zoeken
xnorm=(x-min(x))/(max(x)-min(x));
%plot(t,xnorm)

% Quantize a signal to "b" bits.  
xqNorm=floor(xnorm*(2^b-1));    % (0 to 2^n-1) round floor of ceil

%normalisatie en bits ongedaan maken om te kunnen vergelijken met origineel
xq1=xqNorm/(2^b-1);
xq = xq1*(max(x)-min(x))+min(x);
plot(t,xq)
%kwantisatiefout
xe=x-xq;
hold on
plot(t,xe)
title('kwantisatiefout');
%kwantisatieRuis = rms van kwantisatie fout
kr=rms(xe);
krArray=[];
for b=2:16
    xqNorm=floor(xnorm*(2^b-1));
    xq1=xqNorm/(2^b-1);
    xq = xq1*(max(x)-min(x))+min(x);
    %kwantisatiefout
    xe=x-xq;
    %kwantisatieRuis = rms van kwantisatie fout
    kr=rms(xe)
    krArray(b-1) = kr;
end
figure
plot((2:16),krArray)
xlabel('Aantal bits')
ylabel('kwantisatieruis')
title('rms');


