clear all

tic % includes the overhead cost of spmd
spmd
m = 10000;
a = 0;
b = pi/2;
n = m/numlabs; % # of increments per lab
deltax= (b -a)/numlabs; % length per lab
ai= a + (labindex-1)*deltax; % local integration range
bi = a + labindex*deltax;
dx = deltax/n; % increment length for lab
x = ai+dx/2:dx:bi-dx/2; % mid-pts of n increments per worker
intSPMD= sum(cos(x)*dx); % integral sum per worker
intSPMD= gplus(intSPMD,1); % global sum over all workers
end % spmd
toc
