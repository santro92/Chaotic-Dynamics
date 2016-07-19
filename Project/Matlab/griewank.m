function [y] = griewank(x)
d = length(x);
sum = 0;
prod = 1;

for i = 1:d
    sum = sum + x(i)^2/4000;
    prod = prod * cos(x(i)/sqrt(i));
end

y = sum - prod + 1;
end

