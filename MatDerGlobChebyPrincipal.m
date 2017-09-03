% Este programa pinta las funciones y el error en funcion de x
clear all; close all; format long; format rat; 

%Para definir el intervalo de [a b] y el numero de nodos
a=0; b=2; N=50; 
xn = (a+b)./2 + 0.5*(b-a)*cos(pi*[0:N]'/N);
[int,D] = MatDerGlob(xn,@Derivacio); %Variamos la funcion a gusto

[F,dF]=Derivacio(xn); %Variamos tambien la funcion a interpolar

%Pinto las dos funciones

figure(1); subplot(2,1,1)
plot(xn,dF); hold on; grid on
plot(xn,int,'-r'); 
plot(xn,dF,'ok');
title(['Chebychev, N= ', int2str(N)],'fontsize',12);    hold off

e=abs(int-dF); 

%Pinto el error
subplot(2,1,2); semilogy(xn,e,'-pk'); grid on


