function [] = plotFunc(x,y,z)
hold on
plot3(x,y,z,'DisplayName','z','Color',[1,0,0])
end
 
% plot(x,y,'.','MarkerSize',1)
% xlabel('\theta');
% ylabel('\omega');
% theta(i) = mod(startingValue(1),2*pi);
% plot(theta(1000:noOfSteps),omega(1000:noOfSteps),'.','MarkerSize',1)
% axis([0 2*pi min(omega) max(omega)]);