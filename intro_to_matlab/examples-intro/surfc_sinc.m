figure
[X,Y] = meshgrid(-8:.5:8);
R = sqrt(X.^2 + Y.^2) + eps;
Z = sin(R)./R;
%mesh(X,Y,Z,'EdgeColor','black')
surfc(X,Y,Z)
shading interp
%colormap hsv
%colormap jet
colormap cool
colorbar
view([1 1 1])
%view([0 0 1])
%view([0 1 1])
