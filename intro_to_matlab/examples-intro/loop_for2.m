clear all

     m=50;   
     n=100;
     for i = 1:1:m       % Stripe 1
         for j = 1:2:n    % Stripe 2
             H(i , j) = 1/(i+j);
         end
     end
