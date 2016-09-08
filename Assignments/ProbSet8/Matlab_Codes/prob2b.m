data = csvread('ps8data/data3');
theta = data(:,1);
time = data(:,2);
tau = 1.75;
nextPoint = (tau / (time(2) - time(1)));
m = 7;
j = 0;
k = 5;
points = zeros((numel(theta) - k*nextPoint),2);
for i = 1 : (numel(theta) - k*nextPoint)
    points(i,1) = mod(theta(i + (j*nextPoint)),2*pi);
    points(i,2) = mod(theta(i + (k*nextPoint)),2*pi);
end
figure
plot(points(:,2),points(:,1),'b.','MarkerSize',1)
xlabel('\theta(t+5\tau)');
ylabel('\theta(t)');
title('\tau = 1.5');