pkg load signal;
clear all;

delta = [1, zeros(1,98)];

% unapproximated version
Pu = 1;
Qu = [1 -1.845 0.850586];

yu = filter(Pu, Qu, delta);

Pa = 1;
Qa = [1 -1.85 0.85];

ya = filter(Pa, Qa, delta);

figure(1)
subplot(2,1,1); stem(yu);
title("Unapproximated impulse response");
xlabel("Sample"); ylabel("Amplitude");
subplot(2,1,2); stem(ya);
title("Approximated impulse response");
xlabel("Sample"); ylabel("Amplitude");
pause;

print -depslatex -mono "-S800,600" "iirStableUnstableApprox.tex"
