function [f] = Rosenbrock(x,y)
f = (1-x).^2 + 100*(y-x.^2).^2;
end

