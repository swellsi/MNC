function [ff,PC]=LagrangeInt(N,M,xn,xx,f)

 fx=feval(f,xn);
 
 PC=ones(M,N+1);
 
 for i=0:N
     Den=1;
     for j=0:N
         if i~=j
             Den=Den*(xn(i+1)-xn(j+1));
         end
     end
     for j=0:N
         if i~=j
             PC(:,i+1) = PC(:,i+1).*(xx - xn(j+1)') ;
         end 
     end
     PC(:,i+1)=PC(:,i+1)/Den;
 end
ff=[];  for j=1:M;  ff=[ff;sum(PC(j,:)*fx)]; end


 
            
             
 