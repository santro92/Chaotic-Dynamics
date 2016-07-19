clc;
t =0;
h = 0.001;
n = 25000;
intCond = [-13, -12, 52];

points = zeros(n,3);
f = @Lorenz;

for i = 1:n   
    intCond = nextPoint(f,intCond,h);
    points(i,:) = intCond;
end       

