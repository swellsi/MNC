function[Int]=IntClenshawCurtis(a,b,N,fun)
T=cos([0:N]'*[0:N]*pi/N);
I=([2 ; 0 ; (1+(-1).^[2:N]')./(1-[2:N]'.^2)]);
w=T\I;
x=cos([0:N]'*pi/N);  z=a+(b-a)*(x+1)*.5; f=feval(fun,z);
Int=.5*(b-a)*f'*w;
