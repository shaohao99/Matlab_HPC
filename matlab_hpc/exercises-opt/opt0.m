clear all

tic

n=5000;

for i=1:n
   for j=1:n
       a=3./2.;
       if (i==1)
         x(i,j)=5.;
       else
         x(i,j) = i * log(2.) * log(a) + j^2 / 2.;
       end
       %y(i,j)=x(i,j)^2;
   end
end

y=x.^2;

toc

disp(y(1,1))
disp(y(n,n))
%disp('Job ends')
