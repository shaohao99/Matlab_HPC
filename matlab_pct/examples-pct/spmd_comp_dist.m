clear all

%parpool(4)

a=5;
b=Composite();
c=Composite();

A=ones(4,4);
A=distributed(A);
%A=distributed(ones(4,4));

spmd

  x=a
  y=labindex
  b=labindex;
  c=magic(labindex+2);
  B=A*2;
  %M=magic(labindex+2);

end

b{:}
c{:}
B
%M1=M{1}
%M2=M{2}

%delete(gcp)
