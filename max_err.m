% Este programa pinta el error de la CD en funcion de n 

clear all; close all; format long;
a=0; b=2; 

max_err=[]; hvec=[];

for N=100:100:2000
     
h=(b-a)/N;

[int,xn,dF]=DifferenceCentred(a,b,N);
%Me da como resultado la derivada

err=abs(int-dF(2:end-1));

max_err=[max_err, max(err)]; % Vector que contiene el maximo del error

hvec=[hvec h]; % Vector que contiene el m?ximo

end

max_err2=[]; hvec2=[];

for N=100:100:2000
    
h=(b-a)/N;

[int,xn,dF]=DiferenciasFinitas(a,b,N);
%Me da como resultado la derivada

err=abs(int-dF(1:end-1));

max_err2=[max_err2, max(err)]; % Vector que contiene el maximo del error

hvec2=[hvec2 h]; % Vector que contiene el m?ximo

end
loglog(hvec,max_err,'-o'); grid on; hold on
title(['Error en funcion de h, Nmax= ', int2str(N)],'fontsize',16);
plot(hvec2,max_err2,'-or'); grid on; hold off


