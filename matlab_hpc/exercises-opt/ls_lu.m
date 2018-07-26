% solve linear equation A*x=b
% before running this program, obtain symmetric matrix A from sym_mat.m
x = randn(n,1);
b = A*x;

tic
y = inv(A)*b; 
toc
err = norm(y-x)
res = norm(A*y-b)

tic
z = A\b; 
toc
err = norm(z-x)
res = norm(A*z-b)

