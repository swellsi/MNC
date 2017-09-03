function [F]=Interpolacio(x)
F=tanh(20*sin(x.*12))+((2*exp(x.*3)./100).*sin(x.*300));
end