fs = 80000;
n=64;
p=1000;
a=62.5;
b=62.5;
c=250;
d=125;


%Rechthoekig window (boxcar)
wR = rectwin(n);
%von Hann window (hanning)
wvH = hann(n);
%Hamming window (hamming) 
wH = hamming(n);

Windows =[wR wvH wH];


%tijdsplot
subplot(2,3,1);
stem(wR)
subplot(2,3,2);
stem(wvH)
subplot(2,3,3);
stem(wH)
%frequentie plot
subplot(2,3,4);
stem(abs(fft(wR)))
subplot(2,3,5);
stem(abs(fft(wvH)))
subplot(2,3,6);
stem(abs(fft(wH)))

Ts = 1/fs;
T=(n-1)*Ts;
t= 0:Ts:T;
x1 = sin(2*pi*p*t);
x2 = sin(2*pi*(p+a)*t);
x3 = x1 + 0.5*sin(2*pi*(p+b)*t);
x4 = x1 + 0.5*sin(2*pi*(p+c)*t);
x5 = sin(2*pi*(p+d)*t) + 0.5*sin(2*pi*(p+b)*t);
x6 = sin(2*pi*(p+d)*t) + 0.5*sin(2*pi*(p+c)*t);

Functies =[x1 x2 x3 x4 x5 x6];

%for x=1:6
 %   figure
  %  for w=1:3
   %     stem(Windows(w))
       % y = repmat(Windows(w),1,n) .* Functies(x);
        %subplot(1,3,w);
        %plot(y)
   % end
%end
figure
y = repmat(wR,1,n) .* x1;
subplot(1,3,1);
plot(y)
y = repmat(wH,1,n) .* x1;
subplot(1,3,2);
plot(y)
y = repmat(wvH,1,n) .* x1;
subplot(1,3,3);
plot(y)

figure
y = repmat(wR,1,n) .* x2;
subplot(1,3,1);
plot(y)
y = repmat(wH,1,n) .* x2;
subplot(1,3,2);
plot(y)
y = repmat(wvH,1,n) .* x2;
subplot(1,3,3);
plot(y)

figure
y = repmat(wR,1,n) .* x3;
subplot(1,3,1);
plot(y)
y = repmat(wH,1,n) .* x3;
subplot(1,3,2);
plot(y)
y = repmat(wvH,1,n) .* x3;
subplot(1,3,3);
plot(y)

figure
y = repmat(wR,1,n) .* x4;
subplot(1,3,1);
plot(y)
y = repmat(wH,1,n) .* x4;
subplot(1,3,2);
plot(y)
y = repmat(wvH,1,n) .* x4;
subplot(1,3,3);
plot(y)

figure
y = repmat(wR,1,n) .* x5;
subplot(1,3,1);
plot(y)
y = repmat(wH,1,n) .* x5;
subplot(1,3,2);
plot(y)
y = repmat(wvH,1,n) .* x5;
subplot(1,3,3);
plot(y)

figure
y = repmat(wR,1,n) .* x6;
subplot(1,3,1);
plot(y)
y = repmat(wH,1,n) .* x6;
subplot(1,3,2);
plot(y)
y = repmat(wvH,1,n) .* x6;
subplot(1,3,3);
plot(y)