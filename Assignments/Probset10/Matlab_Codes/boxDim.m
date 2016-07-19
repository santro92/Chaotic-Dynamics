rk4;
itr = 0.01:0.01:50;
pts = zeros(numel(itr),2);
pts1 = zeros(numel(itr),2);
for i = 1:numel(itr)
    n = length(uniquetol(points,itr(i),'ByRows',true,'DataScale',1));
    pts(i,:) = [itr(i), n];
    pts1(i,:) = [log(1/itr(i)), log(n)];
end
plot(pts1(:,1),pts1(:,2));
ylabel('log N(\epsilon)');
xlabel('log (1/\epsilon)');
            