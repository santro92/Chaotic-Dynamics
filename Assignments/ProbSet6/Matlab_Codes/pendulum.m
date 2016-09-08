function [y] = pendulum(x,t)
A = 1.1;
m = 0.1;
l = 0.1;
g = 9.8;
beta = 0.25;
alpha = 7.4246;
y(1) = x(2);
y(2) = ( ((A/(m*l)) * cos(alpha * t)) - ((beta * x(2))/m) - (g * sin(x(1))/l) );
end

