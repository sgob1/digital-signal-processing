N = 21;
M = 21;
u = [1 zeros(1,N-1)];
U = fft(u,M);
figure(1);
subplot(2,3,1);   n = 0:1:N-1;   stem(n,u);
title('Impulse in zero'); 
xlabel('Time index n'); ylabel('Amplitude')
subplot(2,3,2);   k = 0:1:M-1;   stem(k,abs(U));
title('Magnitude'); 
xlabel('Frequency index k'); ylabel('Magnitude')
subplot(2,3,3);   stem(k,angle(U));
title('Phase'); 
xlabel('Frequency index k'); ylabel('Phase')

u = [zeros(1,4) 1 zeros(1,N-5)]; 
U = fft(u,M);
subplot(2,3,4);   n = 0:1:N-1;   stem(n,u);
title('Delayed impulse'); 
xlabel('Time index n'); ylabel('Amplitude')
subplot(2,3,5);   k = 0:1:M-1;   stem(k,abs(U));
title('Magnitude'); 
xlabel('Frequency index k'); ylabel('Magnitude')
subplot(2,3,6);   stem(k,angle(U));
title('Phase'); 
xlabel('Frequency index k'); ylabel('Phase')
pause;
