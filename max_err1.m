% Este programa pinta el error de la interpolacion baricentrica en funcion
% de N

clear all; close all; format long;
a=0; b=1; M=2000; 
xx=linspace(a,b,M);
fxx=InterPractica6(xx);

max_err=[]; nvec=[];

for N=[100 1000 10000]
    
xn = (a+b)./2 + 0.5*(b-a)*cos(pi*[0:N]'/N); 

ff = InterBariCheby (xn,xx,@InterPractica6); 
%Me da como resultado la funcion interpolada

err=abs(int-dF(2:end-1)); 

max_err=[max_err, max(err)]; % Vector que contiene el maximo del error

nvec=[nvec N]; % Vector que contiene el m?ximo

end

semilogy(nvec,max_err,'-o'); grid on
