pkg load signal;
clear all;

hm = 1/7*[1 1 1 1 1 1 1];
h1 = 1/6*[0.5 1 1 1 1 1 0.5];
w = [0:0.01:3.14];
[HM, WM] = freqz(hm, 1, w);
[H1, W1] = freqz(h1, 1, w);
figure(1);
plot(w/3.14, abs(HM), w/3.14, abs(H1));
legend('Moving average', 'Type 1');
title('Magnitude response');

pause;
print -depslatex "-S800,600" "typeI.tex"
