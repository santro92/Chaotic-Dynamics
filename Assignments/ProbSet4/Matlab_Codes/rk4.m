t =0;
h = 0.005;
n = 127;
x = [0.01,0];
plotFunc(x(1),x(2))

theta = zeros(1,n);
omega = zeros(1,n);
f = @pendulum;

for i = 1:n   
    x = nextPoint(f,x,h,t);
    t = t + h;
    theta(i) = x(1);
    omega(i) = x(2);
end

plotFunc(theta,omega)
       

