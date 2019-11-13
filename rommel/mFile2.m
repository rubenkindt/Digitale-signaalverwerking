%convolutie
s1 = [0 0 0 1 1 1 1 1 1];
s2 = [0 0 0 1 0 0 0 0 0];
s3 = [0 0 0 1 0 0 0 0 1 0 0 0];
s4 = [0 0 0 1 1 1 1 1 1 0 0 0];
coef = [0.5 0.25 0.125];

figure(1);
c1 = conv(s1, coef);
subplot(2,2,1);
stem (c1);

c2 = conv(s2, coef);
subplot(2,2,2);
stem (c2);
c3 = conv(s3, coef);
subplot(2,2,3);
stem (c3);
c4 = conv(s4, coef);
subplot(2,2,4);
stem (c4);

%coef vervangen door 1/3
figure(2);
coef = [1/3 1/3 1/3];

c1 = conv(s1, coef);
subplot(2,2,1);
stem (c1);
c2 = conv(s2, coef);
subplot(2,2,2);
stem (c2);
c3 = conv(s3, coef);
subplot(2,2,3);
stem (c3);
c4 = conv(s4, coef);
subplot(2,2,4);
stem (c4);

%=========================
figure (3);
ingangf = [0 0 0 0 0 1 1 1 -1 1 0 0 0 0 0 0 -1 -1 -1 1 -1 0 0 0 0 0]
coef = [0 0 0 0 0 1 1 1 -1 1 0 0 0 0 0 0 -1 -1 -1 1 -1 0 0 0 0 0 ]

c1 = conv(s1, coef);
subplot(2,2,1);
stem (c1);
c2 = conv(s2, coef);
subplot(2,2,2);
stem (c2);
c3 = conv(s3, coef);
subplot(2,2,3);
stem (c3);
c4 = conv(s4, coef);
subplot(2,2,4);
stem (c4);

%========================
figure (4);
coef = [0 0 0 0 0 1 1 1 -1 1 0 0 0 0 0 0 -1 -1 -1 1 -1 0 0 0 0 0 ]
coef = fliplr(coef);

c1 = conv(s1, coef);
subplot(2,2,1);
stem (c1);
c2 = conv(s2, coef);
subplot(2,2,2);
stem (c2);
c3 = conv(s3, coef);
subplot(2,2,3);
stem (c3);
c4 = conv(s4, coef);
subplot(2,2,4);
stem (c4);

