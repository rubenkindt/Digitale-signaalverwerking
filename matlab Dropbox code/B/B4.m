%Sebastian Van der Borght 4meii2 B4

%coefficienten van de zero van iir
iir_z = [1 0 0 0];

%coefficienten van de pool van iir
iir_p = [1 -0.5 -0.25 -0.125];

%coefficienten van de zero van fir
fir_z = [0.5 0.25 0.125];

%coefficienten van de pool van fir
fir_p = [1 0 0];

%stap responsie van iir netwerk
figure(1)
dstep(iir_z, iir_p)
title('Step response of third order recursive filter (IIR)');

%impuls responsie van iir netwerk
figure(2)
dimpulse(iir_z, iir_p)
title('Impulse response of third order recursive filter (IIR)');

%stap responsie van fir netwerk
figure(3)
dstep(fir_z, fir_p)
title('Step response of second order non-recursive filter (FIR)');

%impuls responsie van fir netwerk
figure(4)
dimpulse(fir_z, fir_p)
title('Impulse response of second order non-recursive filter (FIR)');

%coefficienten van de pool van iir 50% kleiner
iir_p = [1 -0.25 -0.125 -0.0625];

%stap responsie van iir netwerk
figure(5)
dstep(iir_z, iir_p)
title('Step response of third order recursive filter (IIR)');

%coefficienten van de zero van fir 50% kleiner
fir_z = [0.25 0.125 0.0625];

%stap responsie van fir netwerk
figure(6)
dstep(fir_z, fir_p)
title('Step response of second order non-recursive filter (FIR)');