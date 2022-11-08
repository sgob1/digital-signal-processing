pkg load signal;
clear all;

h5 = [1 1 1 1 1];
h14 = [1 1 1 1 1 1 1 1 1 1 1 1 1 1];
w = [0:0.01:3.14];
[H5, W5] = freqz(h5, 1, w);
[H14, W14] = freqz(h14, 1, w);
figure(1);
subplot(2,1,1);
plot(w/3.14, abs(H5), w/3.14, abs(H14));
legend('M=5', 'M=14');
title('Magnitude response');
subplot(2,1,2);
plot(w/3.14, angle(H5), w/3.14, angle(H14));
legend('M=5', 'M=14');
title('Phase response');

pause;
print -depslatex "-S800,600" "mPointMovingAverageFilterPlot.tex"
