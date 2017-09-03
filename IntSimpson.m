function [I,i]=IntSimpson(a,b,m,f)
H=(b-a)/m; xk=a+[0:2*m]'*H/2; [F,iF]=feval(f,xk);
I=(H/6)*(F(1)+2*sum(F(3:2:2*m-1))+4*sum(F(2:2:2*m))+F(2*m+1));
i=iF(end)-iF(1);
