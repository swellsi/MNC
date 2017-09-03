% Este programa pinta las funciones y el error en funcion de x
clear all; close all; format long; format rat; 

%Para definir el intervalo de [a b] y el numero de nodos
a=0; b=2; N=32; h=(b-a)/N;
xn = a + [0:N]'*h; 
[int,D] = MatDerGlob(xn,@Derivacio); %Variamos la funcion a gusto

[F,dF]=Derivacio(xn); %Variamos tambien la funcion a interpolar

%Pinto las dos funciones

figure(1); subplot(2,1,1)
plot(xn,dF); hold on; grid on
plot(xn,int,'-r'); 
plot(xn,dF,'ok');
title(['Equiespaiada, N= ', int2str(N)],'fontsize',12);    hold off

e=abs(int-dF); 

%Pinto el error
subplot(2,1,2); semilogy(xn,e,'-pk'); grid on

