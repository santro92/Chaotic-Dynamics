clc;
t =0;
h = 0.001;
n = 10000;
intCond = [-13,-12,52];

x = zeros(1,n);
y = zeros(1,n);
z = zeros(1,n);
f = @Lorenz;

temp = [0,1,0];
d = -20;
hold on;
for i = 1:n   
    preIntCond = intCond;
    intCond = nextPoint(f,intCond,h);
    if ( (((sum(temp .* intCond) + d) < 0) && ((sum(temp .* preIntCond) + d) > 0)) || (((sum(temp .* intCond) + d) > 0) && ((sum(temp .* preIntCond) + d) < 0)) )
        if (preIntCond < intCond)
            a = preIntCond;
            b = intCond;
        else
            a = intCond;
            b = preIntCond;
        end
        x = (20 - a(2))/(b(2) - a(2));
        fprintf('%e, %e, %e\n',a(1)+x*(b(1) - a(1)),a(2)+x*(b(2) - a(2)),a(3)+x*(b(3) - a(3)))
        plot3(a(1)+x*(b(1) - a(1)),a(2)+x*(b(2) - a(2)),a(3)+x*(b(3) - a(3)),'b.');
    end
    x(i) = intCond(1);
    y(i) = intCond(2);
    z(i) = intCond(3);
end
       
% plot3(x,y,z,'.');