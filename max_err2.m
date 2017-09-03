% Este programa calcula N para que err< 10^(-12) para la interpolacion
% baricentrica

clear all; close all; format long;
a=0; b=1; M=2000; 
xx=linspace(a,b,M);
fxx=InterPractica6(xx);

N=2145;

max_err=1;

while max_err>1E-12
    
xn = (a+b)./2 + 0.5*(b-a)*cos(pi*[0:N]'/N); 

ff = InterBariCheby (xn,xx,@InterPractica6); 
%Me da como resultado la funcion interpolada

err=abs(ff-fxx); 

max_err=max(err); % Vector que contiene el maximo del error

N=N+1

end

