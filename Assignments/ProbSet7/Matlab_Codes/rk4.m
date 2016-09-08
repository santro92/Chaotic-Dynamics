% clc;
h = 0.001;
n = 3000;
intCond = [-13 -12 52 1 0 0 0 1 0 0 0 1];
f = @Lorenz;
x = intCond;
for i = 1:n   
    intCond = nextPoint(f,intCond,h);
    x = [x;intCond];
end
       
y = x(n+1,:)
z = reshape(y(4:12),[3,3])
sum(z(:,1))
sum(z(:,2))
sum(z(:,3))