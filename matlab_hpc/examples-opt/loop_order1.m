clear all 

n=10000;

x=zeros(n);
tic
for i=1:n
   for j=1:n
       x(i,j) = i + (j+1)*n;
   end
end
toc

y=zeros(n);
tic
for j=1:n
   for i=1:n
       y(i,j) = i + (j+1)*n;
   end
end
toc

isequal(x,y)
