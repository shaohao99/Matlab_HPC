clear all

     a = randi(100, 1);
     if a < 30
         fprintf('%i is smaller than 30. \n', a);
    elseif a > 80
         fprintf('%d is larger than 80. \n', a);
     else
         X=[num2str(a), ' is between 30 and 80.'];
         disp(X)
     end

