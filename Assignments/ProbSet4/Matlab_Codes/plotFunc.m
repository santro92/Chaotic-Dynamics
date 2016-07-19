function [] = plotFunc(x,y)
hold on
plot(x,y,'.','MarkerSize',0.1)
xlabel('\theta');
ylabel('\omega');
end

% theta(i) = mod(startingValue(1),2*pi);
% plot(theta(1000:noOfSteps),omega(1000:noOfSteps),'.','MarkerSize',1)
% axis([0 2*pi min(omega) max(omega)]);