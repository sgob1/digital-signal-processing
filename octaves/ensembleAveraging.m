clear all; clf;

R = 50;
d = rand(R,1)-0.5;   % noise
m = 0:1:R-1;
s = 2*m.*(0.9.^m);   % signal
x  = s + d';                    % noisy signal
figure(1);
subplot(3,1,1);  stem(m,s);
xlabel('Time index n'); ylabel('Amplitude'); title('Original uncorrupted sequence');
subplot(3,1,2);  stem(m,d);
xlabel('Time index n'); ylabel('Amplitude');  title('Noise');
subplot(3,1,3);  stem(m,x);
xlabel('Time index n'); ylabel('Amplitude');  title('Corrupted sequence');

%% moving average
figure(2);
plot(m,d,'r-',m,s,'b--',m,x,'k')
xlabel('Time index n'); ylabel('Amplitude')
legend('d[n]','s[n]','x[n]');

M = input('Number of input samples [2,10] = ');
b = ones(M,1)/M;
y = filter(b,1,x);
plot(m,x,'k-',m,y,'b--')
legend('x[n]','y[n]');
xlabel ('Time index n');ylabel('Amplitude');

pause;
