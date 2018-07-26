clear all

n=10;
a = rand(n,1,'gpuArray');
b = rand(n,1,'gpuArray');
c = rand(n,1,'gpuArray');
R = arrayfun(@(x,y,z)(x.*y+z), a, b, c);  % compute on GPU
results = gather(R)
