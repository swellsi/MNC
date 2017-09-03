function [int,xn,dF]=DifferenceCentred(a,b,N)
h=(b-a)/N;  u=zeros(1,N+1); v=zeros(1,N-1); 

u(1)=-1; u(3)=1; v(1)=-1;   xn = a + [0:N]'*(b-a)/N; 

[F,dF]=Derivacio(xn);

D=toeplitz(v,u);

int=(D*F)/(2*h);

