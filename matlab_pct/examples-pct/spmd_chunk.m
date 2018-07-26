clear all
%parpool(4)

spmd
  disp(numlabs);  % numlabs  total number of workers, built-in variable
  disp(labindex);  % labindex  index of workers, built-in variable
  N=24;
  A=1:2:N; % total number of workers
  I = find(A > N*(labindex-1)/numlabs & A <= N*labindex/numlabs)   % 
end

%delete(gcp)

