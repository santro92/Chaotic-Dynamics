clc;
l = 300;
m = 600;
figure;
hold on;
b = 0.3;
for a = 0.3:0.001:1.06
    x = zeros(l+m,1);
    y = zeros(l+m,1);
    x(1) = 0.5;
    y(1) = 0;
    for i = 2:(l+m)
        x(i) = y(i-1) + 1 -(a*(x(i-1)^2));
        y(i) = b*x(i-1);
    end
    plot(a,x(m:l+m),'.','MarkerSize',2);
end
xlabel('a');
ylabel('x_{n}');