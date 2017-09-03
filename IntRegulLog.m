function [Int]=IntRegulLog(a,b,N,fun)
% Aquesta funcio serveix per a calcular una integral impropia de segona
% especie (entre a i b), que contingui un log x. S'agafa la funcio 
% eliminant el log x.
% g esta entre 0 y 1
x = a + [0:N]'*(b-a)/N; 
T=-1./(([0:N]+1).^2)';
V=fliplr(vander(x))';
w=V\T;
f=feval(fun,x);  
Int=f'*w;

