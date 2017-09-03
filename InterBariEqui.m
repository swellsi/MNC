function [int,lambda]= InterBariEqui(xn,xx,f)
 fx=feval(f,xn);
% Pesos Baricèntrics
 lambda=0*xn; N=length(xn);
 for j=1:N
     p=1; for k=[1:j-1 j+1:N]; p=p*(xn(j)-xn(k)); end
     lambda(j)=1/p;
 end
%Evaluacion en la malla fina
int=0*xx;
for kk=1:length(xx)
    test = find(abs(xx(kk)-xn)<1e-15) ;
    if length(test)>0 ;
        int(kk)=fx(test);
    else 
        num=0 ; den=0 ;
        for j=1:N
            num = num + fx(j)*lambda(j)./(xx(kk)-xn(j)) ;
            den = den + lambda(j)./(xx(kk)-xn(j)) ;
        end
        int(kk)=num./den ;
    end
end

        
 