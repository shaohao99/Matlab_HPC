clear all

%parpool(15)

n=5000000000;
%n=4000;    % total number of grid points
dx=1/n;  % grid step

total_sum=Composite();  % variable for calculating sum, will be used whithin and available out of spmd region
%total_sum=0.;

tic
spmd

  m=n/numlabs;   % number of points on a worker
  length=1/numlabs;  % length of grid on a worer
  %dx=length/m;

  startx = (labindex -1)*length;   % global x for starting point of a worker
  endx = labindex*length;     % global x for ending point of a worker

  local_sum=0;   % set 0 before calculating local sum

  tic

  x = startx : dx : endx;    % x on a worker

  %for i=1:1:m
  %   s = s + 4./(1.+x(i)*x(i));   % local sum on a worker
  %end

  local_sum = sum(4./(1.+x.*x));   % local sum on a worker

  total_sum=gplus(local_sum,1);   % calculate total sum on worker 1, lacal sums are gathered from other workers

  toc

end
toc

format long
pi=total_sum{1}*dx
%pi=total_sum*dx
%s{:}

%delete(gcp)
