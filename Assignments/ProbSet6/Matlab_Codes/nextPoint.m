function [x] = nextPoint(f,x,h,t)
k1 = h * f(x, t);
k2 = h * f(x + k1/2, t + h/2);
k3 = h * f(x + k2/2, t + h/2);
k4 = h * f(x + k3, t + h);
x = x + 1/6*(k1 + 2*k2 + 2*k3 + k4);
end

