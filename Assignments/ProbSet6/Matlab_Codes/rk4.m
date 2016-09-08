t =0;
h = 0.025;
n = 30000;
x = [0.01,0];

theta = zeros(1,n);
omega = zeros(1,n);
time = zeros(1,n);
f = @pendulum;

for i = 1:n   
    time(i) = t;
    x = nextPoint(f,x,h,t);
    t = t + h;
    theta(i) = x(1);
    omega(i) = x(2);
end
       

