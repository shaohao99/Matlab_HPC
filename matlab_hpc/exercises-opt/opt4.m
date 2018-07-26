clear all

tic

n=5000;
%n=10000;

a=3.*0.5;

x=zeros(n);

x(1,:)=5.;

for i=2:n
   for j=1:n
       x(i,j) = i*log(2.+a) + j*j*0.5;
   end
end

y=x.^2;

toc

disp(y(1,1))
disp(y(n,n))
%disp('Job ends')
