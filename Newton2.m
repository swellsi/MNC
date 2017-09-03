function [xk,resd,it]=Newton2(fx,a,b,alfa1,e,itmax)
% Per una funcio amb 2 variables, una que variem des de l'exterior (alfa1)
it=1;xk =[(a+b)/2];dx=1e-6;ek=.5*abs(b-a);resd = [feval(fx,xk,alfa1)];
while it< itmax  & ek>e
    fxx=(feval(fx,xk(end)+dx,alfa1)-feval(fx,xk(end)-dx,alfa1))./(2*dx);
    xk=[xk;xk(end)-feval(fx,xk(end),alfa1)/fxx]; 
    ek=[ek;.5*abs(xk(end-1)-xk(end))];  
    resd = [resd;abs(feval(fx,xk(end),alfa1))]; it=it+1;
end
