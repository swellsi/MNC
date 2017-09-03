function [int,D]= MatDerGlob (xn,f)
 fx=feval(f,xn);
% Pesos Baricèntrics
 lambda=0*xn;  N=length(xn);
 for j=1:N
     p=1; for k=[1:j-1 j+1:N]; p=p*(xn(j)-xn(k)); end
     lambda(j)=1/p;
 end
 D=zeros(N,N); % Matriu de derivació global
for i=1:N
    for j=[1:i-1 i+1:N]
        D(i,j)=lambda(j)/((xn(i)-xn(j))*lambda(i));
    end
end
for j=1:N
    i=j;
    D(i,j)=sum(1./(xn(i)-(xn([1:i-1 i+1:N]))));
end
int=D*fx;
  
 