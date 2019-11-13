%Sebastian Van der Borght 4meii2 A2

%sample functies
%sf = [0 0 0 1 1 1 1 1 1];
%sf = [0 0 0 1 0 0 0 0 0];
%sf = [0 0 0 1 0 0 0 0 1 0 0 0];
%sf = [0 0 0 1 1 1 1 1 1 0 0 0];
sf = [0 0 0 0 0 1 1 1 -1 1 0 0 0 0 0 0 -1 -1 -1 1 -1 0 0 0 0 0];

%eenvoudige coefficienten
%c = [0.5 0.25 0.125];
%c = [1/3 1/3 1/3];
%c = [0 1 1 1 -1 1 0];
c = [0 1 -1 1 1 1 0];

%plot van sample functie in discrete tijdsdomein
subplot(3,1,1)
stem(sf, 'k');
title('Convolution');
xlabel('n(sample)'), ylabel('x(n)')

%plot van coefficienten in discrete tijdsdomein
subplot(3,1,2)
stem(c, 'k');
xlabel('n(sample)'), ylabel('coeff')

%plot van convolutiesom in het discrete tijdsdomein
subplot(3,1,3)
stem(conv(sf, c), 'k');
xlabel('n(sample)'), ylabel('conv som')