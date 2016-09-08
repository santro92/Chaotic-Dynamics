data = csvread('ps8data/data1');
theta = data(:,1);
time = data(:,2);
tau = 167; 
ds = 10;
len = numel(theta) - ds*tau;
omega = zeros(len,1);

for i = 1:ds:len
    omega(i) = (theta(i+(ds*tau)) - theta(i)) / (time(i+(ds*tau)) - time(i));
end

modTheta = mod(theta(1:len),2*pi);
plot(modTheta(1:ds:len),omega(1:ds:len), 'r.');
% plot(time(1:ds:len),omega(1:ds:len),'b.');
% axis([0 46 -1 1]);
xlabel('\theta');
ylabel('\omega');
