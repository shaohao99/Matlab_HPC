clear all 

n=12;
s = 0;
X = rand(1,n);
b= 10;
parfor k = 1 : n
  a = 2*k;   % a - temporary var; k - loop index
  %a = 5*k/n; % n - broadcast var
  %Y(k) = X(k) + a; % X(:), Y(:) - sliced var
  Y(k) = X(k) + a*n;       % X, Y - sliced var; n - broadcast var
  b=20;
  %b
  s = s + a; % s - reduction var
  %s = a -s ; % s - not a reduction var
end
s
Y
b
