pkg load signal;
clear all;

num1 = [1  2];    den1 = [1  .4  -.12];   % slide 03.5-60
num2 = impz(num1,den1,6)',   den2 = 1;   % FIR approximation

figure(1);
subplot(1,2,1);
[re,im] = meshgrid(-3:.05:2,-1.5:.05:1.5);
z = re + j*im;
X1 = (num1(1).*z.^0 + num1(2).*z.^-1) ./   ...
    (den1(1).*z.^0 +den1(2).*z.^-1 +den1(3).*z.^-2);
X1m = log(abs(X1)+.01);
mesh(re,im,X1m); axis([-3 2 -1.5 1.5 -5 5]);

subplot(1,2,2);
X2 = zeros(size(z));
for k = 1:length(num2)
    X2 = X2 + num2(k) .* z.^(-k+1);
end
X2m = log(abs(X2)+.01);
mesh(re,im,X2m); axis([-3 2 -1.5 1.5 -5 5]);

print -depslatex -mono "-S800,600" "zTransform2.tex"
