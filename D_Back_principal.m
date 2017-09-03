% Este programa calcula la derivada en funcion de a,b y N y dibuja el error
clear all; close all; format long;

%Para definir el intervalo de [a b], el numero de nodos
a=0; b=pi/2; N=40; 
[int,xn,dF]=DiferenciasFinitas(a,b,N);
% S'ha de variar la funció en el fitxer "Derivacio"

%Pinto las dos funciones

figure(1); subplot(2,1,1)
plot(xn(2:end),int); grid on, hold on
plot(xn,dF,'-r');
title(['BackwardsDifference, N= ', int2str(N)],'fontsize',16);    hold off

e=abs(int-dF(2:end)); 

%Pinto el error
subplot(2,1,2); semilogy(xn(2:end),e,'-pk'); grid on