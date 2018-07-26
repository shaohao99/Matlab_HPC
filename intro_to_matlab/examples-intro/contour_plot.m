% Obtain data from evaluating peaks function
[x,y,z] = peaks;
% Create pseudocolor plot
pcolor(x,y,z)
% Remove edge lines a smooth colors
shading interp
% Hold the current graph
hold on
% Add the contour graph to the pcolor graph
contour(x,y,z,15,'k')
% no grid lines
grid off
% Return to default
hold off
