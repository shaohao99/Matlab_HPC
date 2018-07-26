clear all;

n = 5000

%for i=1:1:n         % initialize data
%  for j=1:1:n
%       A(i,j)=i+j;
%       B(i,j)=i-j;
%   end
%end

A=randn(n);
B=randn(n);
C=zeros(n);
%D=zeros(n);
a=zeros(n);
b=zeros(n);
c=zeros(n);

%maxNumCompThreads('automatic');
maxNumCompThreads(4);
tic
C = A * B; % run with multiple threads
toc

%maxNumCompThreads(1);% set threads to 1
%tic
%D = A * B; % run on single thread
%toc

%maxNumCompThreads('automatic');
%isequal(C,D)

parpool(4)
a = distributed(A); % distributes A, B from client
b = distributed(B); % a, b on workers; accessible from client
tic
c = a * b; % run on workers; c is distributed
toc
delete(gcp)

%isequal(C,c)

