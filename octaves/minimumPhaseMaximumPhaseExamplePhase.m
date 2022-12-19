clear all;
pkg load signal;

a = 0.8;
b = -.5;
num1 = [1 b];
den1 = [1 a];
num2 = [b 1];
den2 = den1;
[h1 w1] = freqz(num1, den1);
[h2 w2] = freqz(num2, den2);
figure(1);
subplot(2,1,1);
plot(w1/pi, unwrap(angle(h1)));
subplot(2,1,2);
plot(w2/pi, unwrap(angle(h2)));
%pause;
print -depslatex "-S800,600" "minimumPhaseMaximumPhaseExamplePhase.tex"

