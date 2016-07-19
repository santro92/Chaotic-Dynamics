function [x,y] = left_branch(x,y)
newVertex = [x(2)-x(1);y(2)-y(1)] * 0.5;
theta = 90;
rotation = [cosd(-theta) -sind(-theta);sind(-theta) cosd(-theta)];
vertexRotate = (rotation*newVertex);
lineSegmentTopPoint = [x(2); y(2)];
newVertex = vertexRotate + lineSegmentTopPoint;
x(1) = newVertex(1);
y(1) = newVertex(2);
line([x(2) x(1)],[y(2) y(1)])
x = x(1);
y = y(1);
end

%0.7,25%
