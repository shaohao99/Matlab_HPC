t = 0:0.1:3*pi;
plot3(sin(2*t),cos(t),t)

f = @(t) sqrt(4*cos(2*t).^2 + sin(t).^2 + 1);
len = integral(f,0,3*pi)

