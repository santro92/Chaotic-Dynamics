function [y] = Lorenz(x)
a = 16;
r = 20;
b = 4;
y(1) = a*(x(2) - x(1));
y(2) = r*x(1) - x(2) - x(1)*x(3);
y(3) = x(1)*x(2) - b*x(3);
end

