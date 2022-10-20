pkg load signal;
num = [0.008 -0.033 0.05 -0.033 0.008];
den = [1 2.37 2.7 1.6 0.4];
w = [0:0.01:3.14];
H = freqz(num, den, w);
set(groot,'defaultLineLineWidth',2.0)
plot(w,unwrap(angle(H)));
pause;
