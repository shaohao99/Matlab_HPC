
n=5000;
A = rand(n); 
B = rand(n);

tic

spmd

  % distribute matrix after it is created
  u = codistributed(A, codistributor1d(1)); % by row
  v = codistributed(B, codistributor1d(2)); % by column
  w = u * v; % parallel run on workers; w is distributed

  p = rand(n, codistributor1d(1)); % 2 ways to directly create
  q = codistributed.rand(n); % distributed random array
  s = p * q; % parallel run on workers; s is distributed

end

toc

% use s and w directly on client
%x=2*s
%y=3+w
