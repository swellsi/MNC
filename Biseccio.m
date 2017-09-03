function [xk,resd,it]=Biseccio(fx,a,b,e,itmax)
ak=a; bk=b; it=0;   x=(a+b)*.5;   ek=.5*(abs(b-a)); xk=[x];   
resd=[abs(feval(fx,x))];
while it < itmax & ek > e
    if feval(fx,ak)*feval(fx,x)<0
        bk=x;
    else
        ak=x;
    end
    x=(bk+ak)*.5; resd=[resd;abs(feval(fx,x))]; xk=[xk;x];  
    ek=[ek;.5*(abs(bk-ak))]; it=it+1;
end