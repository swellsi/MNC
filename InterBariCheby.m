function ff = InterBariCheby (xn,xx,f) 

%El resutado es la funcion interpolada

 n = length(xn);      fx = feval(f,xn);
 
%Evaluacion en la malla fina

int = 0;

svec =(-1).^[0:n-1]'; %Defino un vector que es el (-1)^j de la formula

for kk = 1:length(xx)
    
  %Multiplico los extremos por 0.5
  p = (svec.*[0.5*fx(1) ; fx(2:end-1) ; 0.5*fx(end)]);
  q = [0.5*svec(1) ; svec(2:end-1) ; 0.5*svec(end)];
  
  num = ((xx(kk) - xn).^(-1))'*p; %Calculo el numerador y el denominador
  den = ((xx(kk) - xn).^(-1))'*q;

        ff(kk) = num/den ;
    end
end
% El resto lo pongo en el programa principal

