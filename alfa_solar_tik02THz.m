
f=(0:199)*0.15;
cd('solar_test_Si_f02THz');
load('Efieldx.h5');
ex02THz=ex;
cd ..


for ii=1:100
  x=ii*10;
 figure(2);
    plot(ex02THz(x,:));
    title(['0.2THz ',int2str(x)]);
    pause(0.4);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% kaip pralaidumas_solar.m
f=(0:199)*0.15; %1=1THz
figure(7);
tmp02a=abs(fft(ex02THz(50:250,2000)));
plot(f,tmp02a(1:200),'k-');

% atsispindejas impulsas
figure(2);
tmp02b=abs(fft(ex02THz(300:500,2000)));
plot(f,tmp02b(1:200),'k-');

% anstpindzio koef
figure(3);
tmp02c=(tmp02a(2:100)./tmp02b(2:100)).^2;
semilogy(f(2:100),tmp02c,'r-');
%plot(f(2:100),tmp02c,'r-');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%kaip R_solar.m
%padekle ir ne padekle E(t)                  
figure(4);
subplot(1,2,1);
plot(ex02THz(250:350,120));
hold on;
plot(ex02THz(70:170,2000),'b--');
title('0.2 THz');
%padekle ir ne padekle furje
subplot(1,2,2);
tmp02d=abs(fft(ex02THz(150:350,120)));
plot(f,tmp02d(1:200),'r-');
hold on;
plot(f,tmp02a(1:200),'r--');
axis([0 5]);
title('0.2 THz');
