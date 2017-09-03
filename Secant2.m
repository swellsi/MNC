function [xk,resd,it]=Secant2(fx,a,b,alfa1,e,itmax)
% Per una funcio amb 2 variables, una que variem des de l'exterior (alfa1)
%Calculem els dos primers punts amb el metode de la corda
fa = (feval(fx,a,alfa1));   fb = (feval(fx,b,alfa1));  q = (fb-fa) / (b-a);
x0=b;f0=fb;x1 = x0-f0/q; f1 = feval(fx,x1,alfa1);resd = [abs(f0) abs(f1)] ;  
xk=[x0;x1];   ek=.5*(abs(x0-x1));   it=2; 
while it< itmax  & ek>e
    fxx=((feval(fx,xk(end),alfa1))-feval(fx,xk(end-1),alfa1))/(xk(end)-xk(end-1));
    p= xk(end)-feval(fx,xk(end),alfa1)/fxx;
    xk=[xk;p]; ek=[ek;.5*abs(xk(end)-xk(end-1))];
    resd = [resd abs(feval(fx,xk(end),alfa1))]; 
    it=it+1;
end
resd=resd';