clear all;

n=100;
xmax=10;
noise=randn(n,1);
x = rand(n,1)*xmax;
beta0 = 4.;
beta1 = 0.2;
beta2=1.2;

y = beta0 + beta1 * x + + beta2 * x.^2 + noise;

X = [ones(size(x)) x x.^2];

b = regress(y,X)
%beta = regression(y,X)

dx1=xmax/(n-1);
x1 = 0:dx1:xmax;
y1 = b(1)+b(2)*x1+b(3)*x1.^2;

plot(x,y,'.')
hold on
plot(x1,y1)
