clear all;
pkg load signal;

num = [0.5];
den = [1 -0.5];
[h, w] = freqz(num, den);
figure(1);
subplot(2,2,1);
plot(w, abs(h));
title("K = 0.5, alpha = 0.5");
subplot(2,2,3);
plot(w, angle(h));

num = [0.5];
den = [1 +0.5];
[h, w] = freqz(num, den);
subplot(2,2,2);
plot(w, abs(h));
title("K = 0.5, alpha = -0.5");
subplot(2,2,4);
plot(w, angle(h));

pause;
print -depslatex "-S800,600" "boundedRealTransferFunctionsExample.tex"
