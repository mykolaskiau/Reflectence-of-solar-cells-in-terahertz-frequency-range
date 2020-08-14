

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

for ii=1:100
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