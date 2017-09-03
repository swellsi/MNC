% Aquesta funcio serveix per a ntegrals impropies convergents 1a espècie
% N PARELL, INTERVAL 0 a Inf (si no és 0 fem canvi de variable)
function [Int]=IntCotan(L,N,fun)
cal=[];
for j=1:N
    tj=pi.*j./(N+1);    x=L*(cot(tj/2)).^2;     f=feval(fun,x);
    w=(4*L/(N+1))*(sin(tj)/((1-cos(tj))^2))*sum(sin((1:N).*tj).*(1-cos((1:N).*pi))./(1:N));
    cal=[cal w*f];
end
Int=sum(cal);
