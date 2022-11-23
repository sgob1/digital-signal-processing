clear all;
pkg load signal;

num = [-0.2 0.18 0.4 1];
den = [1 0.4 0.18 -0.2];
figure(1);
zplane(num, den);
pause;
print -depslatex "-S800,600" "allpassTransferFunctionMirrorExample.tex"

