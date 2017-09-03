function[Int]=IntTanH(a,b,c,N,fun)
% Aquesta funcio serveix per a calcular una integral impropia de segona
% especie (entre a i b). Utilitzar primer Fejer per assegurar el tiro.
% c esta entre 1 y 10
h=c*(N^(-1/2));     u=[-N:N]*h/2;
x=tanh(u);      z=a+(b-a)*(x+1)*.5;     f=feval(fun,z);
Int=((cosh(u)).^(-2))*f'*(b-a)*h*.25;

