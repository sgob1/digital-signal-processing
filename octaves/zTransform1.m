pkg load signal;
clear all;

num1 = [1  2];
den1 = [1  .4  -.12];
num2 = impz(num1,den1,6)', den2 = 1;
figure(1);
subplot(221); zplane(num1,den1);
subplot(222); zplane(num2,den2);
subplot(223); impz(num1,den1);
subplot(224); impz(num2,den2);

%print -depslatex -mono "-S800,600" "zTransform1.tex"
