%  find a root of the cubic polynomial x3 - 2x - 5 using Newton's method

a = 0; fa = -Inf;
b = 3; fb = Inf;
while b-a > eps*b
    x = (a+b)/2;
    fx = x^3-2*x-5;
    %fx = -x^3+2*x+5;
    if fx == 0
          break      % Already found the root, exit the loop
    elseif sign(fx) == sign(fa)
          a = x; fa = fx;
    else
          b = x; fb = fx;
    end
end
x

