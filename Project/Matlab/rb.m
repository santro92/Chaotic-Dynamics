hold on;
f = @(x,y) (1-x).^2 + 100*(y-x.^2).^2;
x = linspace(-2.48,2.48);
[xx,yy] = meshgrid(x,x);
ff = f(xx,yy); 
plot3(xx,yy,ff,'r-');

% x = LogisticMap(rand,500);
% y = rand(500,1);
% subplot(1,2,1);
% plot(1:500, y, '.','MarkerSize',5);
% xlabel('N');
% ylabel('Value');
% title('Pseudo Random Generator');
% subplot(1,2,2);
% plot(1:500, x, '.','MarkerSize',5);
% xlabel('N');
% ylabel('Value');
% title('Chaotic Logistic Map Generator');
