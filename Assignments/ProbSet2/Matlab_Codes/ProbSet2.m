clc;
l = 300;
m = 600;
figure;
hold on;
for R = 3.54:0.001:3.56
    x = zeros(l+m,1);
    x(1) = 0.5;
    for i = 2:(l+m)
        x(i) = R * x(i-1) * (1 - x(i-1));
    end
    plot(R,x(m:l+m),'.','MarkerSize',2);
end
axis([3.5 3.6 0 1]);
xlabel('R');
ylabel('x_{n}');