clear all

n=10000
A=randn(n);
B=A';
b=randn(n,1);
c=zeros(n,1);
d=zeros(n,1);

%for i=1:1:n
%   b(i)=i;
%   for j=1:1:n
%       A(i,j)=2*i+j;
%   end
%end

tic
for i=1:1:n
   for j=1:1:n
       d(i) = d(i) + B(i,j) * b(j);
   end
end
toc

tic
for j=1:1:n
   for i=1:1:n
       c(j) = c(j) + A(i,j) * b(i);
   end
end
toc

isequal(c,d)

c=zeros(n,1);
