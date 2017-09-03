function [F,dF]=Derivacio(x)
F=exp(-x).*((sin(2*x)).^2); % Funció a calcular la derivada
dF=(4*cos(2*x).*sin(2*x).*exp(-x)) - ((sin(2*x).^2).*exp(-x));
% Derivada exacta
end

