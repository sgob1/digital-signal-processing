% E04_3.m                  26oct15    12apr21
%  Transfer functions and freq. response of DISCRETE LTI systems
%  see also geometric interpretation, [Proakis p.322]
pkg load signal;
clear all; clf;

 zz = [];    pp = [ .8];   
 zz = [];    pp = [-.8];
 zz = [];    pp = [.6+j*.5   .6-j*.5];   
% zz = [];    pp = [-.6+j*.5   -.6-j*.5];   
% zz = [1.2];    pp = [];   
% zz = [-1.2];    pp = [];
% zz = [-1.2];    pp = [0];   % note: [] is different from [0]  
% zz = [-.9];    pp = [.6+j*.5   .6-j*.5];   
% zz = [.9];    pp = [.6+j*.5   .6-j*.5]; 
% zz = [.6+j*.8   .6-j*.8];    pp = [.6+j*.5   .6-j*.5]; 
% zz = [.6+j*.8   .6-j*.8];    pp = [.5+j*.7   .5-j*.7   .3];  % zeros are on the unit circle

q0=2;  qq = [-q0:.077:q0];  % avoid "divide by 0" warning
[zr,zi] = meshgrid(qq,qq);
z = zr + j*zi;
NUM = 1;    for k=1:max(size(zz));    NUM = NUM .* (z - zz(k));    end;
DEN = 1;    for k=1:max(size(pp));    DEN = DEN .* (z - pp(k));   end;
W = NUM ./ DEN;
Wm = abs(W);
Wm(Wm>20) = 20;  % clip the peaks

subplot(221);  mesh(zr,zi,Wm);    xlabel('zr'); ylabel('zi'); zlabel('|W|');
axis([-q0,q0,-q0,q0,0,5]);
subplot(222);  contour(zr,zi,Wm,50);   xlabel('zr'); ylabel('zi'); title('|W|'); axis square;
hold on; plot(cos([0:.1:2*pi]),sin([0:.1:2*pi]),'r'); hold off;

ome = [0:.01:2*pi];  ejo = exp(j*ome);
NUM = 1;    for k=1:max(size(zz));    NUM = NUM .* (ejo - zz(k));    end;
DEN = 1;    for k=1:max(size(pp));    DEN = DEN .* (ejo - pp(k));   end;
W = NUM ./ DEN;
Wm = abs(W);     Wp = angle(W);
subplot(223);  plot(ome,Wm);   xlabel('omega'); ylabel('|W|   (lin)');  axis tight;
subplot(224);  zplane(zz',pp');
% subplot(224);  semilogy(ome,Wm);   xlabel('omega'); ylabel('|W|   (log)');  axis tight;
% subplot(224);  plot(ome,Wp);   xlabel('omega'); ylabel('phase(W)');

% [b,a] = zp2tf([zz]',[pp]',1);
% fvtool(b,a);                       %  filter visualization tool

% set(gcf,'PaperPositionMode','auto');
% print -deps   fdtesempio.eps
print -depslatex "-S800,600" "zTransformExample3.tex"


return




