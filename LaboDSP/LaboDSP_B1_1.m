clear all;
close all;

a1=[-0.1 -0.5 -0.9 -1.0 -1.1];
y_1=0;
x=ones(1,200);

for i=1:5
    y=filter(1,[1,a1(i)],x);
    figure(i)
    plot(y)
end

% for i =1:5
%     for r = 1:4
%         y=x+a1(i)*y_1
%         y_1=y;
%     end
%     fprintf('%d: \n',i)
% end
