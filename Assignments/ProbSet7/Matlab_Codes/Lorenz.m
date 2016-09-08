function [y] = Lorenz(x)
a = 16;
r = 45;
b = 4;
J = [-a     , a   , 0;
    (r-x(3)), -1  , -x(1);
     x(2)   , x(1), -b];
V = reshape(x(4:12),[3,3]);
VS = J * V;

y(1) = a*(x(2) - x(1));
y(2) = r*x(1) - x(2) - x(1)*x(3);
y(3) = x(1)*x(2) - b*x(3);
y(4:12) = reshape(VS,[9,1]);
end

