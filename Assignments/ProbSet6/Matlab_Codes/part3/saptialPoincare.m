x = linspace(1,100,100);
z = linspace(1,100,100);
[x z] = meshgrid(x,z);

hold on;
% plot3(x,20*ones(100,1),z,'r.')
plot3(x,2*x,z,'b.')