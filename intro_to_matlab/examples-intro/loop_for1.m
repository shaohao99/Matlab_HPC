clear all

      s=0;
      b=rand(100,1)
      for i = 1:1:100
          s=s+b(i);       % not allow +=
      end
      s

