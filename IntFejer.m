function[Int]=IntFejer(a,b,N,fun)
% Aquesta funcio serveix per a calcular una integral impropia de segona
% especie (entre a i b). Dona pocs decimals segurs, pero es una cuadratura
% robusta.
% Poner un numero de N par 
w=[];
for k=1:N
q=((4*([1:N/2].^2))-1);
w=[w;(2/N)*(1-2*sum((cos(2*[1:N/2].*(2*k-1)'.*pi./(2*N)))./q))];    
end
x=cos((2*[1:N]-1)'*pi/(2*N));  z=a+(b-a)*(x+1)*.5; f=feval(fun,z);
Int=.5*(b-a)*f'*w;
