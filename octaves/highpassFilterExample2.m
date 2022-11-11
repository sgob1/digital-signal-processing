pkg load signal;

clear all;

n = [0:99];
zi = [0 0];
a = cos(0.1*n);
b = cos(0.4*n);
h = [-6.76195 13.456335 -6.76195];
y = filtfilt(h, 1, a + b);
figure(1);
hold on;
plot(n, y, 'LineWidth', 2);
plot(n, a, n, b);
legend('y[n]', 'a[n]', 'b[n]');
hold off;
print -depslatex "-S800,600" "highpassFilterExample2.tex"
