pkg load signal
clear all;

omegac = 1.5;
n = [0:1:12];
xe = sin(omegac*(n-6.001))./(pi*(n-6.001));
figure(1);
subplot(2,1,1);
stem(xe);
title("N = 12");
xo = sin(omegac*(n-6.501))./(pi*(n-6.501));
subplot(2,1,2);
stem(xo);
title("N = 13");

print -depslatex "-S800,600" "linearPhaseTransferFunctionSinc.tex"
