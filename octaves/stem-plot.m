clear;
pkg load signal;

x = [-10:1:18];
figure(1);
stem(x, cos(.35*x - .6));
pause;
% print -depslatex -mono "-S800,600" "stem-plot.tex"
