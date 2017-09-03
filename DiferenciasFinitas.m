function [int,xn,dF]=DiferenciasFinitas(a,b,N)
h=(b-a)/N;  u=zeros(1,N+1); v=zeros(1,N); 
u(1)=-1; u(2)=1; v(1)=-1;

xn = a + [0:N]'*(b-a)/N; 

[F,dF]=Derivacio(xn);

D=toeplitz(v,u);

int=(D*F)/h;