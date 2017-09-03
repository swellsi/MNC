% Este programa pinta las funciones y el error en funcion de x
clear all; close all; format long; 
tic
%Para definir el intervalo de [a b], el numero de nodos y la malla fina
a=0; b=1; N=2000; M=2000; 
xn = (a+b)./2 + 0.5*(b-a)*cos(pi*[0:N]'/N);
xx=linspace(a,b,M);

ff = InterBariCheby (xn,xx,@Interpolacio); %Variamos la funcion a gusto

fxx=Interpolacio(xx);

%Pinto las dos funciones

figure(1); subplot(2,1,1)
plot(xx,fxx); hold on; grid on
plot(xx,ff,'-r'); 
title(['Chebychev, N= ', int2str(N)],'fontsize',16);    hold off

e=abs(ff-fxx); 

%Pinto el error
subplot(2,1,2); semilogy(xx,e,'-pk'); grid on
toc