pkg load signal;
x = [0:1:49];
figure(1);
subplot(2,1,1); stem(x, cos(.25*x)); title("Original Sequence");
subplot(2,1,2); stem(x, cos(.75*x)); title("Downsampled sequence by a factor of 3");
pause;
