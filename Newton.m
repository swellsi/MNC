function [xk,resd,it]=Newton(fx,a,b,e,itmax)
it=1;xk =[(a+b)/2];dx=1e-6;ek=.5*abs(b-a);resd = [feval(fx,xk)];
while it< itmax  & ek>e
    fxx=(feval(fx,xk(end)+dx)-feval(fx,xk(end)-dx))./(2*dx);
    xk=[xk;xk(end)-feval(fx,xk(end))/fxx]; 
    ek=[ek;.5*abs(xk(end-1)-xk(end))];  
    resd = [resd;abs(feval(fx,xk(end)))]; it=it+1;
end
