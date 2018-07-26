clear all;

n = 500
%n = 1000

for j=1:1:n         % initialize data
  for i=1:1:n
      A(i,j)=i+j;
      B(i,j)=2*i-j;
      %C(i,j)=0.; D(i,j)=0.;  
  end
end

C=zeros(n); D=zeros(n);

tic
for i=1:1:n         % mattix multiplication
  for j=1:1:n
      C(i,j)= A(i,:)*B(:,j);
  end
end
toc


tic
D = A * B; % run with multiple threads
toc

tic
E = mtimes(A,B);
toc

isequal(C,D)
isequal(C,E)

