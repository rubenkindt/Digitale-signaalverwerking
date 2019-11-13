clear all;

n = 100;
fs = 12000;
Ts = 1/fs
t = linspace(0, (n-1)*Ts, n);
Xt = 13*sin(2*pi*600*t) + 8*cos(2*pi*880*t);
figure(1);
subplot(2,1,1); stem(Xt); xlabel('samples');

t = linspace(0, (n-1)*Ts, n*10);
Xt = 13*sin(2*pi*600*t) + 8*cos(2*pi*880*t);
subplot(2,1,2); plot(Xt); xlabel('samples');

i = 3;
plotNr = 1;
for f = [0, 1200, 3000, 6000, 9000, 10800, 13200, 12000, 15000, 18000, 21000, 22800, 24000]
    t = linspace(0, 1000, 100);
    Yt = 13*sin(2*pi*f*t);
    figure(2);
    subplot(7,2,plotNr); plot(Yt);
    title(sprintf('f: %d fs: %d', f ,fs));
    plotNr = plotNr + 1;
end

for f = [0, 1200, 3000, 6000, 9000, 10800, 13200, 12000, 15000, 18000, 21000, 22800, 24000]
    F = f/fs;
    figure(3);
    hold on
    plot (F, f, '-o');
    hold off
end
