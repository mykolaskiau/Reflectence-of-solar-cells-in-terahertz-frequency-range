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
figure(1);
tmp005a=abs(fft(ex005THz(50:250,8000)));
subplot(1,4,1);
plot(f,tmp005a(1:200),'k--');
hold on;
tmp01a=abs(fft(ex01THz(50:250,8000)));
plot(f,tmp01a(1:200),'b--');
axis([0 5]);
legend('0.05THz','0.1THz');

subplot(1,4,2);
tmp02a=abs(fft(ex02THz(50:250,2000)));
plot(f,tmp02a(1:200),'k-');
hold on;
tmp1a=abs(fft(ex1THz(50:250,2000)));
plot(f,tmp1a(1:200),'r-');
hold on;
tmp2a=abs(fft(ex2THz(50:250,2000)));
plot(f,tmp2a(1:200),'b-');
axis([0 5]);
legend('0.2THz','1THz','2THz');

subplot(1,4,3);
tmp5a=abs(fft(ex5THz(50:250,2000)));
plot(f,tmp5a(1:200),'k-*');
hold on;
tmp10a=abs(fft(ex10THz(50:250,2000)));
plot(f,tmp10a(1:200),'b-*');
hold on;
tmp30a=abs(fft(ex30THz(50:250,2000)));
plot(f,tmp30a(1:200),'r-*');
legend('5THz','10THz','30THz');

subplot(1,4,4);
tmp50a=abs(fft(ex50THz(50:250,2000)));
plot(f,tmp50a(1:200),'k-o');
hold on;
tmp75a=abs(fft(ex75THz(50:250,2000)));
plot(f,tmp75a(1:200),'b-o');
hold on;
tmp100a=abs(fft(ex100THz(50:250,2000)));
plot(f,tmp100a(1:200),'r-o');
legend('50THz','75THz','100THz');

%įįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįį furje po atsispindejimo nuo pavirsiaus
 figure(2);
tmp005b=abs(fft(ex005THz(1100:1300,6000)));
subplot(1,4,1);
plot(f,tmp005b(1:200),'k--');
hold on;
tmp01b=abs(fft(ex01THz(1100:1300,6000)));
plot(f,tmp01b(1:200),'b--');
axis([0 5]);
legend('0.05THz','0.1THz');

subplot(1,4,2);
tmp02b=abs(fft(ex02THz(300:500,2000)));
plot(f,tmp02b(1:200),'k-');
hold on;
tmp1b=abs(fft(ex1THz(300:500,2000)));
plot(f,tmp1b(1:200),'r-');
hold on;
tmp2b=abs(fft(ex2THz(300:500,2000)));
plot(f,tmp2b(1:200),'b-');
axis([0 5]);
legend('0.2THz','1THz','2THz');

subplot(1,4,3);;
tmp5b=abs(fft(ex5THz(300:500,2000)));
plot(f,tmp5b(1:200),'k-*');
hold on;
tmp10b=abs(fft(ex10THz(300:500,2000)));
plot(f,tmp10b(1:200),'b-*');
hold on;
tmp30b=abs(fft(ex30THz(300:500,2000)));
plot(f,tmp30b(1:200),'r-*');
legend('5THz','10THz','30THz');

subplot(1,4,4);
tmp50b=abs(fft(ex50THz(300:500,2000)));
plot(f,tmp50b(1:200),'k-o');
hold on;
tmp75b=abs(fft(ex75THz(300:500,2000)));
plot(f,tmp75b(1:200),'b-o');
hold on;
tmp100b=abs(fft(ex100THz(300:500,2000)));
plot(f,tmp100b(1:200),'r-o');
legend('50THz','75THz','100THz');
  
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%5555555555555555555555555555555555555555555 IESKOM atspindzio koef
figure(3);   
   subplot(1,2,1);
tmp01c=(tmp01b(2:100)./tmp01a(2:100)).^2;
semilogy(f(2:100),tmp01c,'k-');
%plot(f(2:100),tmp01c,'k-');
title('0.1 THz');
subplot(1,2,2);
tmp005c=(tmp005b(2:100)./tmp005a(2:100)).^2;
semilogy(f(2:100),tmp005c,'r-');
%plot(f(2:100),tmp005c,'r-');
title('0.05 THz');

    figure(4);
subplot(1,3,1);
tmp02c=(tmp02b(2:100)./tmp02a(2:100)).^2;
semilogy(f(2:100),tmp02c,'k-');
%plot(f(2:100),tmp02c,'k-');
title('0.2 THz');
subplot(1,3,2);
tmp1c=(tmp1b(2:100)./tmp1a(2:100)).^2;
semilogy(f(2:100),tmp1c,'r-');
%plot(f(2:100),tmp1c,'r-');
title('1 THz');
subplot(1,3,3);
tmp2c=(tmp2b(2:100)./tmp2a(2:100)).^2;
semilogy(f(2:100),tmp2c,'b-');
%plot(f(2:100),tmp2c,'b-');
title('2 THz');

  figure(5);
subplot(1,3,1);
tmp5c=(tmp5b(2:100)./tmp5a(2:100)).^2;
semilogy(f(2:100),tmp5c,'k-*');
%plot(f(2:100),tmp5c,'k-*');
title('5 THz');
subplot(1,3,2);
tmp10c=(tmp10b(2:100)./tmp10a(2:100)).^2;
semilogy(f(2:100),tmp10c,'b-*');
%plot(f(2:100),tmp10c,'b-*');
title('10 THz');
subplot(1,3,3);
tmp30c=(tmp30b(2:100)./tmp30a(2:100)).^2;
semilogy(f(2:100),tmp30c,'r-*');
%plot(f(2:100),tmp30c,'r-*');
title('30 THz');

%  figure(6);
%tmp50c=(tmp50b(2:100)./tmp50a(2:100)).^2;
%semilogy(f(2:100),tmp50c,'k-o');
%plot(f(2:100),tmp50c,'k-o');
% hold on;
%tmp75c=(tmp75b(2:100)./tmp75a(2:100)).^2;
%semilogy(f(2:100),tmp75c,'b-o');
%plot(f(2:100),tmp75c,'b-o');
%hold on;
%tmp100c=(tmp100b(2:100)./tmp100a(2:100)).^2;
%semilogy(f(2:100),tmp100c,'r-o');
%plot(f(2:100),tmp100c,'r-o');
%legend('50THz','75THz','100THz');
