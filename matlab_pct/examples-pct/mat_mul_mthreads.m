clear all;

n = 10000

%for i=1:1:n         % initialize data
%  for j=1:1:n
%       A(i,j)=i+j;
%       B(i,j)=i-j;
%   end
%end

A=randn(n);
B=randn(n);
C=zeros(n);
D=zeros(n);

%maxNumCompThreads('automatic');
maxNumCompThreads(4);
tic
C = A * B; % run with multiple threads
toc

maxNumCompThreads(1);% set threads to 1
tic
D = A * B; % run on single thread
toc

maxNumCompThreads('automatic');
isequal(C,D)


