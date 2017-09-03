function [xk,resd,it]=Secant(fx,a,b,e,itmax)
%Calculem els dos primers punts amb el metode de la corda
fa = (feval(fx,a));   fb = (feval(fx,b));  q = (fb-fa) / (b-a);
x0=b;  f0=fb;  x1 = x0-f0/q; f1 = feval(fx,x1);resd = [abs(f0) abs(f1)] ;  
xk=[x0;x1];   ek=.5*(abs(x0-x1));   it=2; 
while it< itmax  & ek>e
    fxx=((feval(fx,xk(end)))-feval(fx,xk(end-1)))/(xk(end)-xk(end-1));
    p= xk(end)-feval(fx,xk(end))/fxx;
    xk=[xk;p]; ek=[ek;.5*abs(xk(end)-xk(end-1))];
    resd = [resd abs(feval(fx,xk(end)))]; 
    it=it+1;
end
resd=resd';