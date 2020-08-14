

for ii=1:100
  x=ii*10;
  figure(1);
  plot(ex(x,:));
  axis([0 400 -50 100]); % jeigu norisi tik Si paziuret kas vyksta (nuo 0 iki ~240 yra Si)
  title(['t ',int2str(x)]);
  pause(0.5);
end
