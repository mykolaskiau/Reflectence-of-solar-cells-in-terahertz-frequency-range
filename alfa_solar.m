

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

for ii=1:1
  x=ii*10;
  figure(1);
    subplot(1,2,1);
    plot(ex005THz(x,:));
    title(['0.05THz ',int2str(x)]);
    pause(0.1);
    subplot(1,2,2);
    plot(ex01THz(x,:));
    title(['0.1THz ',int2str(x)]);
    pause(0.1); 
 figure(2);
    subplot(1,3,1);
    plot(ex02THz(x,:));
    title(['0.2THz ',int2str(x)]);
    pause(0.1);
    subplot(1,3,2);
    plot(ex1THz(x,:));
    title(['1THz ',int2str(x)]);
    pause(0.1);
    subplot(1,3,3);
    plot(ex2THz(x,:));
    title(['2THz ',int2str(x)]);
    pause(0.1);
  figure(3);
    subplot(1,3,1);
    plot(ex5THz(x,:));
    title(['5THz ',int2str(x)]);
    pause(0.1);
    subplot(1,3,2);
    plot(ex10THz(x,:));
    title(['10THz ',int2str(x)]);
    pause(0.1);
    subplot(1,3,3);
    plot(ex30THz(x,:));
    title(['30THz ',int2str(x)]);
    pause(0.1);
  figure(4);
    subplot(1,3,1);
    plot(ex50THz(x,:));
    title(['50THz ',int2str(x)]);
    pause(0.1);
    subplot(1,3,2);
    plot(ex75THz(x,:));
    title(['75THz ',int2str(x)]);
    pause(0.1);
    subplot(1,3,3);
    plot(ex100THz(x,:));
    title(['100THz ',int2str(x)]);
    pause(0.1);
end

%įįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįįfurje pries atsispindint nuo pavirsiaus
f=(0:199)*0.15; %1=1THz
%figure(5);
%tmp005=abs(fft(ex005THz(,))); %su zemais dazniais veliau biski
%plot(f,tmp005(1:200),'k--');
%hold on;
%tmp01=abs(fft(ex01THz(:,)));
%plot(f,tmp01(1:200),'b--');
  figure(6);
tmp02a=abs(fft(ex02THz(50:250,2000)));
plot(f,tmp02a(1:200),'k-');
hold on;
tmp1a=abs(fft(ex1THz(50:250,2000)));
plot(f,tmp1a(1:200),'r-');
hold on;
tmp2a=abs(fft(ex2THz(50:250,2000)));
plot(f,tmp2a(1:200),'b-');
legend('0.2THz','1THz','2THz');
  figure(7);
tmp5a=abs(fft(ex5THz(50:250,2000)));
plot(f,tmp5a(1:200),'k-*');
hold on;
tmp10a=abs(fft(ex10THz(50:250,2000)));
plot(f,tmp10a(1:200),'b-*');
hold on;
tmp30a=abs(fft(ex30THz(50:250,2000)));
plot(f,tmp30a(1:200),'r-*');
legend('5THz','10THz','30THz');
  figure(8);
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
%  figure(9);
%tmp005=abs(fft(ex005THz(0:99,3000))); %su zemais dazniais veliau biski
%plot(f,tmp005(1:200),'k--');
%hold on;
%tmp01=abs(fft(ex01THz(0:99,3000)));
%plot(f,tmp01(1:200),'b--');
  figure(10);
tmp02b=abs(fft(ex02THz(300:500,2000)));
plot(f,tmp02b(1:200),'k-');
hold on;
tmp1b=abs(fft(ex1THz(300:500,2000)));
plot(f,tmp1b(1:200),'r-');
hold on;
tmp2b=abs(fft(ex2THz(300:500,2000)));
plot(f,tmp2b(1:200),'b-');
legend('0.2THz','1THz','2THz');
  figure(11);
tmp5b=abs(fft(ex5THz(300:500,2000)));
plot(f,tmp5b(1:200),'k-*');
hold on;
tmp10b=abs(fft(ex10THz(300:500,2000)));
plot(f,tmp10b(1:200),'b-*');
hold on;
tmp30b=abs(fft(ex30THz(300:500,2000)));
plot(f,tmp30b(1:200),'r-*');
legend('5THz','10THz','30THz');
  figure(12);
tmp50b=abs(fft(ex50THz(300:500,2000)));
plot(f,tmp50b(1:200),'k-o');
hold on;
tmp75b=abs(fft(ex75THz(300:500,2000)));
plot(f,tmp75b(1:200),'b-o');
hold on;
tmp100b=abs(fft(ex100THz(300:500,2000)));
plot(f,tmp100b(1:200),'r-o');
legend('50THz','75THz','100THz');
  figure(13);
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%5555555555555555555555555555555555555555555 IESKOM ALFA
tmp02c=(tmp02a(2:100)./tmp02b(2:100)).^2;
semilogy(f(2:100),tmp02c,'k-');
alpha02=-log(tmp02c)*10;
hold on;
tmp1c=(tmp1a(2:100)./tmp1b(2:100)).^2;
semilogy(f(2:100),tmp1c,'r-');
alpha1=-log(tmp1c)*10;
hold on;
tmp2c=(tmp2a(2:100)./tmp2b(2:100)).^2;
semilogy(f(2:100),tmp2c,'b-');
alpha2=-log(tmp2c)*10;
legend('0.2THz','1THz','2THz');
  figure(14);
tmp5c=(tmp5a(2:100)./tmp5b(2:100)).^2;
semilogy(f(2:100),tmp5c,'k-*');
alpha5=-log(tmp5c)*10;
hold on;
tmp10c=(tmp10a(2:100)./tmp10b(2:100)).^2;
semilogy(f(2:100),tmp10c,'b-*');
alpha10=-log(tmp10c)*10;
hold on;
tmp30c=(tmp30a(2:100)./tmp30b(2:100)).^2;
semilogy(f(2:100),tmp30c,'r-*');
alpha30=-log(tmp30c)*10;
legend('5THz','10THz','30THz');
  figure(15);
tmp50c=(tmp50a(2:100)./tmp50b(2:100)).^2;
semilogy(f(2:100),tmp50c,'k-o');
alpha50=-log(tmp50c)*10;
 hold on;
tmp75c=(tmp75a(2:100)./tmp75b(2:100)).^2;
semilogy(f(2:100),tmp75c,'b-o');
alpha75=-log(tmp75c)*10;
hold on;
tmp100c=(tmp100a(2:100)./tmp100b(2:100)).^2;
semilogy(f(2:100),tmp100c,'r-o');
alpha100=-log(tmp100c)*10;
legend('50THz','75THz','100THz');

%padekle ir ne padekle E(t)                  0.2THz
figure(16);
plot(ex02THz(250:350,120));
hold on;
plot(ex02THz(70:170,2000),'b--');
%padekle ir ne padekle furje
figure(17);
tmp02d=abs(fft(ex02THz(150:350,120)));
plot(f,tmp02d(1:200),'r-');
hold on;
plot(f,tmp02a(1:200),'r--');

%padekle ir ne padekle E(t) %%%%%%%%%%%%%%%%%%%%%%%%% 1Thz
figure(18);
plot(ex1THz(250:350,120));
hold on;
plot(ex1THz(70:170,2000),'b--');
%padekle ir ne padekle furje
figure(19);
tmp1d=abs(fft(ex1THz(150:350,120)));
plot(f,tmp1d(1:200),'r-');
hold on;
plot(f,tmp1a(1:200),'r--');

%padekle ir ne padekle E(t) %%%%%%%%%%%%%%%%%%%%%% 2THz
figure(20);
plot(ex2THz(250:350,120));
hold on;
plot(ex2THz(70:170,2000),'b--');
%padekle ir ne padekle furje
figure(21);
tmp2d=abs(fft(ex1THz(150:350,120)));
plot(f,tmp2d(1:200),'r-');
hold on;
plot(f,tmp2a(1:200),'r--');

%padekle ir ne padekle E(t) %%%%%%%%%%%%%%%%%%%%%% 5THz
figure(21);
plot(ex5THz(250:350,120));
hold on;
plot(ex5THz(70:170,2000),'b--');
%padekle ir ne padekle furje
figure(22);
tmp5d=abs(fft(ex5THz(150:350,120)));
plot(f,tmp5d(1:200),'r-');
hold on;
plot(f,tmp5a(1:200),'r--');

%padekle ir ne padekle E(t) %%%%%%%%%%%%%%%%%%%%%% 10THz
figure(23);
plot(ex10THz(250:350,120));
hold on;
plot(ex10THz(70:170,2000),'b--');
%padekle ir ne padekle furje
figure(24);
tmp10d=abs(fft(ex10THz(150:350,120)));
plot(f,tmp10d(1:200),'r-');
hold on;
plot(f,tmp10a(1:200),'r--');

%padekle ir ne padekle E(t) %%%%%%%%%%%%%%%%%%%%%% 30THz
figure(25);
plot(ex30THz(300:400,120));
hold on;
plot(ex30THz(70:170,2000),'b--');
%padekle ir ne padekle furje
figure(26);
tmp30d=abs(fft(ex30THz(175:375,120)));
plot(f,tmp30d(1:200),'r-');
hold on;
plot(f,tmp30a(1:200),'r--');

%padekle ir ne padekle E(t) %%%%%%%%%%%%%%%%%%%%%% 50THz
figure(27);
plot(ex50THz(300:400,120));
hold on;
plot(ex50THz(70:170,2000),'b--');
%padekle ir ne padekle furje
figure(28);
tmp50d=abs(fft(ex50THz(175:375,120)));
plot(f,tmp50d(1:200),'r-');
hold on;
plot(f,tmp50a(1:200),'r--');




  