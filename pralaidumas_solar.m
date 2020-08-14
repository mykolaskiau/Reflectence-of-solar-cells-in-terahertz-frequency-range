cd('solar_test_Si_f005THz');
load('Efieldx.h5');
ex005THz=ex;
cd .. 
cd('solar_test_Si_f01THz');
load('Efieldx.h5');
ex01THz=ex;
cd .. 
cd('solar_test_Si_f02THz');
load('Efieldx.h5');
ex02THz=ex;
cd ..
cd('solar_test_Si_f1THz');
load('Efieldx.h5');
ex1THz=ex;
cd .. 
cd('solar_test_Si_f2THz');
load('Efieldx.h5');
ex2THz=ex;
cd .. 
cd('solar_test_Si_f5THz');
load('Efieldx.h5');
ex5THz=ex;
cd ..
cd('solar_test_Si_f10THz');
load('Efieldx.h5');
ex10THz=ex;
cd ..
cd('solar_test_Si_f30THz');
load('Efieldx.h5');
ex30THz=ex;
cd ..
cd('solar_test_Si_f50THz');
load('Efieldx.h5');
ex50THz=ex;
cd ..
cd('solar_test_Si_f75THz');
load('Efieldx.h5');
ex75THz=ex;
cd ..
cd('solar_test_Si_f100THz');
load('Efieldx.h5');
ex100THz=ex;

%įįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįfurje pries atsispindint nuo pavirsiaus
f=(0:199)*0.15; %1=1THz

tmp005a=abs(fft(ex005THz(50:250,8000)));

tmp01a=abs(fft(ex01THz(50:250,8000)));

tmp02a=abs(fft(ex02THz(50:250,2000)));

tmp1a=abs(fft(ex1THz(50:250,2000)));

tmp2a=abs(fft(ex2THz(50:250,2000)));

tmp5a=abs(fft(ex5THz(50:250,2000)));

tmp10a=abs(fft(ex10THz(50:250,2000)));

tmp30a=abs(fft(ex30THz(50:250,2000)));

tmp50a=abs(fft(ex50THz(50:250,2000)));

tmp75a=abs(fft(ex75THz(50:250,2000)));

tmp100a=abs(fft(ex100THz(50:250,2000)));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% LYGINAM PRALAIDUMA 
figure(1);
%padekle ir ne padekle E(t)                  0.1THz
subplot(1,2,1);
plot(ex01THz(750:850,120));
hold on;
plot(ex01THz(70:170,8000),'b--');
title('0.1 THz');
%padekle ir ne padekle furje
subplot(1,2,2);
tmp01d=abs(fft(ex01THz(700:900,120)));
plot(f,tmp01d(1:200),'r-');
hold on;
plot(f,tmp01a(1:200),'r--');
axis([0 5]);
title('0.1 THz');

%padekle ir ne padekle E(t) %%%%%%%%%%%%%%%%%%%%%%%%% 0.05Thz
figure(2);
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
axis([0 5]);
title('0.05 THz');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 0.2THz

%padekle ir ne padekle E(t)                  
figure(3);
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

%padekle ir ne padekle E(t) %%%%%%%%%%%%%%%%%%%%%%%%% 1Thz
figure(4);
subplot(1,2,1);
plot(ex1THz(250:350,120));
hold on;
plot(ex1THz(70:170,2000),'b--');
title('1 THz');
%padekle ir ne padekle furje
subplot(1,2,2);
tmp1d=abs(fft(ex1THz(150:350,120)));
plot(f,tmp1d(1:200),'r-');
hold on;
plot(f,tmp1a(1:200),'r--');
axis([0 5]);
title('1 THz');

%padekle ir ne padekle E(t) %%%%%%%%%%%%%%%%%%%%%% 2THz
figure(5);
subplot(1,2,1);
plot(ex2THz(250:350,120));
hold on;
plot(ex2THz(70:170,2000),'b--');
title('2 THz');
%padekle ir ne padekle furje
subplot(1,2,2);
tmp2d=abs(fft(ex1THz(150:350,120)));
plot(f,tmp2d(1:200),'r-');
hold on;
plot(f,tmp2a(1:200),'r--');
axis([0 5]);
title('2 THz');

%padekle ir ne padekle E(t) %%%%%%%%%%%%%%%%%%%%%% 5THz
figure(6);
subplot(1,2,1);
plot(ex5THz(250:350,120));
hold on;
plot(ex5THz(70:170,2000),'b--');
title('5 THz');
%padekle ir ne padekle furje
subplot(1,2,2);
tmp5d=abs(fft(ex5THz(150:350,120)));
plot(f,tmp5d(1:200),'r-');
hold on;
plot(f,tmp5a(1:200),'r--');
axis([2 7]);
title('5 THz');

%padekle ir ne padekle E(t) %%%%%%%%%%%%%%%%%%%%%% 10THz
figure(7);
subplot(1,2,1);
plot(ex10THz(250:350,120));
hold on;
plot(ex10THz(70:170,2000),'b--');
title('10 THz');
%padekle ir ne padekle furje
subplot(1,2,2);
tmp10d=abs(fft(ex10THz(150:350,120)));
plot(f,tmp10d(1:200),'r-');
hold on;
plot(f,tmp10a(1:200),'r--');
axis([7 13]);
title('10 THz');

%padekle ir ne padekle E(t) %%%%%%%%%%%%%%%%%%%%%% 30THz
figure(8);
subplot(1,2,1);
plot(ex30THz(300:400,120));
hold on;
plot(ex30THz(70:170,2000),'b--');
title('30 THz');
%padekle ir ne padekle furje
subplot(1,2,2);
tmp30d=abs(fft(ex30THz(175:375,120)));
plot(f,tmp30d(1:200),'r-');
hold on;
plot(f,tmp30a(1:200),'r--');
axis([27 30]);
title('30 THz');

