clear all;

n=100;
noise=randn(n,1);
x = rand(n,1)*10;
beta0 = 4.;
beta1 = 2.5;

y = beta0 + beta1 * x + noise;
plot(x,y,'.')

lsline

X = [ones(size(x)) x];
%X = [zeros(size(x)) x];

beta = regress(y,X)

%beta = regression(y,X)