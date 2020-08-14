cd('solar_test_Si_f005THz');
load('Efieldx.h5');
ex005THz=ex;
cd .. 
cd('solar_test_Si_f01THz');
load('Efieldx.h5');
ex01THz=ex;
cd .. 

for ii=1:1
  x=ii*10;
 figure(1);
    subplot(1,2,1);
    plot(ex01THz(x,:));
    axis([0 400 -50 100]);
    title(['0.05THz ',int2str(x)]);
    pause(0.5);
    subplot(1,2,2);
    plot(ex005THz(x,:));
    title(['0.1THz ',int2str(x)]);
    pause(0.5); 
end

%saltinis
f=(0:199)*0.15; %1=1THz
figure(5);
tmp005a=abs(fft(ex005THz(50:250,8000)));
plot(f,tmp005a(1:200),'k-');
hold on;
tmp01a=abs(fft(ex01THz(50:250,8000)));
plot(f,tmp01a(1:200),'b-');

figure(6);
tmp005b=abs(fft(ex005THz(1100:1300,6000)));
plot(f,tmp005b(1:200),'k-');
hold on;
tmp01b=abs(fft(ex01THz(1100:1300,6000)));
plot(f,tmp01b(1:200),'b-');

figure(7);
subplot(1,2,1);
tmp01c=(tmp01b(2:15)./tmp01a(2:15)).^2;
%semilogy(f(2:15),tmp01c,'k-');
plot(f(2:15),tmp01c,'k-');
title('0.1 THz');
subplot(1,2,2);
tmp005c=(tmp005b(2:15)./tmp005a(2:15)).^2;
%semilogy(f(2:15),tmp005c,'r-');
plot(f(2:15),tmp005c,'r-');
title('0.05 THz');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% LYGINAM PRALAIDUMA 
figure(8);
%padekle ir ne padekle E(t)                  0.1THz
subplot(1,2,1);
plot(ex01THz(750:850,120));
hold on;
plot(ex01THz(70:170,8000),'b--');
title('0.1THz');
%padekle ir ne padekle furje
subplot(1,2,2);
tmp01d=abs(fft(ex01THz(700:900,120)));
plot(f,tmp01d(1:200),'r-');
hold on;
plot(f,tmp01a(1:200),'r--');
title('0.1THz');

%padekle ir ne padekle E(t) %%%%%%%%%%%%%%%%%%%%%%%%% 0.05Thz
figure(9);
subplot(1,2,1);
plot(ex005THz(750:850,120));
hold on;
plot(ex005THz(70:170,8000),'b--');
title('0.05 THz');
%padekle ir ne padekle furje
subplot(1,2,2);
tmp005d=abs(fft(ex005THz(700:900,120)));
plot(f,tmp005d(1:200),'r-');
hold on;
plot(f,tmp005a(1:200),'r--');
title('1THz');
