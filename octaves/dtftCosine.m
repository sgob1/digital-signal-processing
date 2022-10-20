pkg load signal;
N = 21;
M = 21;
r = 3; n = 0:N-1;  u = cos(2*pi*r*n/N);
U = fft(u,M);
figure(1);
subplot(2,3,1);   n = 0:1:N-1;   stem(n,u);
title('Original time-domain sequence'); 
xlabel('Time index n'); ylabel('Amplitude')
subplot(2,3,2);   k = 0:1:M-1;   stem(k,abs(U));
title('Magnitude, r = 3'); 
xlabel('Frequency index k'); ylabel('Magnitude')
subplot(2,3,3);   stem(k,angle(U));
title('Phase, r = 3'); 
xlabel('Frequency index k'); ylabel('Phase')

r = 3.3; n = 0:N-1;  u = cos(2*pi*r*n/N); 
U = fft(u,M);
subplot(2,3,4);   n = 0:1:N-1;   stem(n,u);
title('Original time-domain sequence'); 
xlabel('Time index n'); ylabel('Amplitude')
subplot(2,3,5);   k = 0:1:M-1;   stem(k,abs(U));
title('Magnitude, r = 3.3'); 
xlabel('Frequency index k'); ylabel('Magnitude')
subplot(2,3,6);   stem(k,angle(U));
title('Phase, r = 3.3'); 
xlabel('Frequency index k'); ylabel('Phase')
pause;
