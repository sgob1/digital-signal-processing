clear all;

pkg load signal;
figure(1);
num = [2 16 44 56 32];
den = [3 3 -15 18 -12];
zplane(num, den);
print -depslatex -mono "-S800,600" "poleZeroPlotExample.tex"

