function [xk,it]=Newton43(a,b,e,itmax,fx)
% Calcula la convergencia del metode i la representa en una grafica
it=1;xk =[(a+b)/2];ek=.5*abs(b-a); resd = [feval(fx,xk)];
while it< itmax  & ek>e
    q=(feval(fx,xk(end)+(feval(fx,xk(end)))))-feval(fx,xk(end));
    xk=[xk;xk(end)-((feval(fx,xk(end))^2)/q)];
    
    ek=[ek;.5*abs(xk(end-1)-xk(end))];  
    resd = [resd;abs(feval(fx,xk(end)))];   
    it=it+1;
end
a=abs(xk(1:end-1)-xk(end));
b=abs(xk(2:end)-xk(end));
figure(1); loglog(a,b); grid on; hold on 
x=linspace(1e-3,10); loglog(x,x.^2,'r');loglog(x,x.^3,'k');loglog(x,x,'c')
hold off