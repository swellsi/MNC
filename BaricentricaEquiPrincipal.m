% Este programa pinta las funciones y el error en funcion de x
clear all; close all; format long; 
% CUANDO LA FUNCION ES MUY COMPLEJA UTILIZAR LA FORMA DE CHEBYCHEV

%Para definir el intervalo de [a b], el numero de nodos y la malla fina
a=0; b=1; N=10; M=2000; 
xn = a + [0:N]'*(b-a)/N; 
xx=linspace(a,b,M);

ff = InterBariEqui (xn,xx,@Interpolacio); %Variamos la funcion a gusto

fxx=Interpolacio(xx); %Variamos tambien la funcion a interpolar
fn=Interpolacio(xn);

%Pinto las dos funciones

figure(1); subplot(2,1,1)
plot(xx,fxx); hold on; grid on
plot(xx,ff,'-r'); 
title(['Equiespaiada, N= ', int2str(N)],'fontsize',12);    hold off

e=abs(ff-fxx); 

%Pinto el error
subplot(2,1,2); semilogy(xx,e,'-pk'); grid on

