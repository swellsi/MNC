function [F,iF]=Integracio(x)
F=4*((1+x.^2).^-1); % Funcio a calcular la integral
iF=4*atan(x); %Integral exacta