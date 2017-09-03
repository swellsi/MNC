% Este programa calcula la derivada en funcion de a,b y N y dibuja el error
clear all; close all; format long;

%Para definir el intervalo de [a b], el numero de nodos
a=0; b=pi/2; N=5; 
[int,xn,dF,D]=DiferenciasFinitas(a,b,N); 
% S'ha de variar la funció en el fitxer "Derivacio"

%Pinto las dos funciones

figure(1); subplot(2,1,1)
plot(xn(1:end-1),int); grid on, hold on
plot(xn,dF,'-r')
title(['ForwardDifference, N= ', int2str(N)],'fontsize',16);    hold off

e=abs(int-dF(1:end-1)); 

%Pinto el error
subplot(2,1,2); semilogy(xn(1:end-1),e,'-pk'); grid on