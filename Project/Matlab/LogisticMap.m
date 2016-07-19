function [x] = LogisticMap(initialValue, N)
r = 4;
x = zeros(N,1);
x(1) = initialValue;
for i = 1:N-1
    x(i+1) = r*x(i)*(1 - x(i));
end

