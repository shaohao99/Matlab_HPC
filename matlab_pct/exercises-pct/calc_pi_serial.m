clear all


n=8000000000;
dx=1/n;
pi=0;

tic
for i=1:n
    x = (i-0.5)*dx;
    pi = pi + 4./(1.+x*x);
end
toc

format long
pi=pi*dx


