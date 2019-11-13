% This script creates a signal, and then quantizes it to a specified number
% of bits.  It then calculates the quantization error.
% see if you run the script.

fprintf('\nE71 Lab, Sampling and Quantization\n');

b=3;                            % Number of bits.
N=120;                          % Number of samples in final signal.
n=0:(N-1);                      %Index

% Choose the input type.
choice = questdlg('Choose input','Input',...
    'Sine','Sawtooth','Random','Random');

fprintf('Bits = %g, levels = %g, signal = %s.\n', b, 2^b, choice);

% Create the  input data sequence.
a=6;
b=11;
p=440;
q=880;
r=8800;
n=128;
times=10;
close all;

r=8800;
t = 0:1/Fs:1-1/Fs;
figure
Y = linspace(0,Tend);
hold on

Fs = r
t = 0:1/Fs:1-1/Fs;
X = a*sin(2*pi*p*t)+b*cos(2*pi*q*t);
x_max = abs(min(X))
X_norm=X/x_max

% Signal is restricted to between -1 and +1.
x(x>=1)=(1-eps);            % Make  signal from -1 to just less than 1.
x(x<-1)=-1;

% Quantize a signal to "b" bits.  
xq=floor((x+1)*2^(b-1));    % Signal is one of 2^n int values (0 to 2^n-1)
xq=xq/(2^(b-1));            % Signal is from 0 to 2 (quantized)
xq=xq-(2^(b)-1)/2^(b);      % Shift signal down (rounding)

xe=x-xq;                    % Quantization error

stem(x,'b');
hold on;
stem(xq,'r');
hold on;
stem(xe,'g');
legend('exact','quantized','error','Location','Southeast')
title(sprintf('Signal, Quantized signal and Error for %g bits, %g quantization levels',b,2^b));
hold off