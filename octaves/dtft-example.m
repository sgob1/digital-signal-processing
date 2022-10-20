pkg load signal;
num = [0.008 -0.033 0.05 -0.033 0.008];
den = [1 2.37 2.7 1.6 0.4];
w = [0:0.01:3.14];
H = freqz(num, den, w);
plot(w, real(H));
set(groot,'defaultLineLineWidth',2.0)
figure(1);
subplot(2, 2, 1); plot(w, real(H));
title("Real part of H");
subplot(2, 2, 2); plot(w, imag(H));
title("Imaginary part of H");
subplot(2, 2, 3); plot(w, abs(H));
title("Magnitude spectrum of H");
subplot(2, 2, 4); plot(w, angle(H));
title("Phase spectrum of H");
pause;
