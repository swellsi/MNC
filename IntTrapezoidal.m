function [I,i]=IntTrapezoidal(a,b,m,f)
H=(b-a)/m; xk=a+[0:m]'*H; [F,iF]=feval(f,xk);
I=(H/2)*(sum(F(1:m)+F(2:m+1)));
i=iF(end)-iF(1);
% Super poc precisa, necessita un punyao i mig de punts per tenir un error
% una mica digne. No recomanable a no ser que la integral sigui periodica,
% en aquest cas funciona molt be. 