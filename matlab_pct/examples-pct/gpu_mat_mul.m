clear all

n = 6400;           % matrix size
a = rand(n);       % Cerate n * n random matrix a on base workspace (host)
A = gpuArray(a);       % copy a to the GPU
B = gpuArray.rand(n);    % create random matrix directly on GPU
C = A * B;           % matrix multiply on GPU
c = gather(C);      % bring data back to base workspace


