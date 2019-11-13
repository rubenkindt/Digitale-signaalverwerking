%-----------------Birte De Smedt---------------
%% eerste convolutie

u=[[ 0 0 0 1 1 1 1 1 1], [0 0 0 1 0 0 0 0 0], [0 0 0 1 0 0 0 0 1 0 0 0], [0 0 0 1 1 1 1 1 1 0 0 0]]; 

choice = questdlg('kies coefficient functie','Input',...
    '0.5 coeff','1/3 coeff','0.5 coeff');
switch choice
    case '0.5 coeff'
        v=[0.5 0.25 0.125];
    case '1/3 coeff'
       v=[1/3 1/3 1/3];
end

w = conv(u,v);
subplot(1,3,1);
stem(u)
subplot(1,3,2);
stem(v)
subplot(1,3,3);
stem(w)

%% tweede ingangsfunctie

choice = questdlg('kies coeff functie','Input2',...
    'kopie','gespiegelde kopie','kopie');
switch choice
    case 'kopie'
        v=[0 1 1 1 -1 1 0];
    case 'gespiegelde kopie'
       v=[0 1 -1 1 1 1 0];
end
u=[0 0 0 0 0 1 1 1 -1 1 0 0 0 0 0 0 -1 -1 -1 1 -1 0 0 0 0 0 ];
figure
txt= convertCharsToStrings(choice);

w = conv(u,v);
subplot(1,3,1);
stem(u)
subplot(1,3,2);
stem(v)
title(choice);
subplot(1,3,3);
stem(w)
