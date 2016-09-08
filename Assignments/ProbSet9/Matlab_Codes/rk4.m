clc;
t =0;
h = 0.001;
n = 15000;
intCond = [-13, -12, 52];

x = zeros(1,n);
y = zeros(1,n);
z = zeros(1,n);
points = zeros(n,3);
f = @Lorenz;
fileID = fopen('exp1.txt','w');
for i = 1:n   
    intCond = nextPoint(f,intCond,h);
    x(i) = intCond(1);
    y(i) = intCond(2);
    z(i) = intCond(3);
    fprintf(fileID,'%6.5f\n',x(i));
    points(i,:) = [x(i) y(i) z(i)];
end
plotFunc(x,y,z)
       

