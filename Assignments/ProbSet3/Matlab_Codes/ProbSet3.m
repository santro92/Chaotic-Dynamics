clc;
R = 10;
x = zeros(pow2(R),1);
y = zeros(pow2(R),1);
x(2) = 0;
y(2) = 1;
plot([x(1) x(2)],[y(1) y(2)])
tempx = [x(1) x(2)];
tempy = [y(1) y(2)];
[x(3),y(3)] =  left_branch(tempx,tempy);
[x(4),y(4)] =  right_branch(tempx,tempy);
hold on
for j = 2:pow2(R-1)
    for i = (2*j)-1:(2*j)
        tempx = [x(j) x(i)];
        tempy = [y(j) y(i)];
        [x((2*i)-1),y((2*i)-1)] =  left_branch(tempx,tempy);
        [x(2*i),y(2*i)] =  right_branch(tempx,tempy);
    end
end
hold off