clear all

%parpool(4)
  x=zeros(1,12);
  parfor i=1:12
    t = getCurrentTask(); disp(t.ID);
    x(i)=10*i;
    %i
    %x(i)
    %disp(i);
    %disp(x(i));
  end
%delete(gcp)

