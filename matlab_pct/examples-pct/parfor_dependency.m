clear all

%n=500000000;
n=10;

a = 1:n;
parfor  i= 2:n
%for  i= 2:n
    a(i) = a(i-1)*2;
    %a(i) = a(i)*2;
end

%a
a(1)
a(n)
