pkg load signal;

clear all;

n = [0:99];
zi = [0 0];
a = cos(0.1*n);
b = cos(0.4*n);
h = [-6.76195 13.456335 -6.76195];
H = 2*(-6.76195)*cos(n) + 13.456335;
y = filter(h, 1, a + b, zi);
figure(1);
plot(n, y, n, a, n, b);
legend('y[n]', 'a[n]', 'b[n]');
print -depslatex "-S800,600" "highpassFilterExample1.tex"
