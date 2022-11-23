clear all;
pkg load signal;

num = [-0.2 0.18 0.4 1];
den = [1 0.4 0.18 -0.2];
[h w] = freqz(num, den);
figure(1);
subplot(2,1,1);
plot(w, angle(h));
subplot(2,1,2);
plot(w, unwrap(angle(h)));
pause;
print -depslatex "-S800,600" "allpassTransferFunctionMirrorExamplePhase.tex"

