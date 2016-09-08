data = csvread('ps8data/data2');
theta = data(:,1);
time = data(:,2);
tau = 0.15;
nextPoint = (tau / (time(2) - time(1)));
m = 7;
j = 0;
k = 2;
points = zeros((numel(theta) - m*nextPoint),2);
for i = 1 : (numel(theta) - m*nextPoint)
    points(i,1) = mod(theta(i + (j*nextPoint)),2*pi);
    points(i,2) = mod(theta(i + (k*nextPoint)),2*pi);
end

plot(points(:,2),points(:,1),'b.','MarkerSize',1)
xlabel('\theta(t+0.3)');
ylabel('\theta(t)');