x = 0:pi/100:4*pi;
y = sin(x);
y2 = cos(x);
plot(x,y,'black',x,y2,'red--','linewidth',2)
xlabel('x')
ylabel('y')
axis([0 4*pi -1 1])
title('Plot of Sine and Cosine Functions','FontSize',12)
legend('sin(x)','cos(x)')

