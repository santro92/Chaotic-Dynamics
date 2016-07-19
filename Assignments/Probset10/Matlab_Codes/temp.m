data = csvread('data.txt');
pts = data(:,1);
nextPoint = 106;
m = 3;
j = 0;
l = 1;
k = 2;
fileID = fopen('exp.txt','w');
points = zeros((numel(pts) - m*nextPoint),3);
for i = 1 : (numel(pts) - m*nextPoint)
    points(i,1) = pts(i + (j*nextPoint));
    points(i,2) = pts(i + (l*nextPoint));
    points(i,3) = pts(i + (k*nextPoint));
    fprintf(fileID,'%6.5f %6.5f %6.5f\n',points(i,1),points(i,2),points(i,3));
end
