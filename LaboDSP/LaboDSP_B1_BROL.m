clear all;
close all;

a1=1.1;

x=1;
y_1=0;

for r = 1:4
   y=x+a1*y_1
   y_1=y;
end