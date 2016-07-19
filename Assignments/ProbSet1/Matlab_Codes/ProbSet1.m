clc;
n = 50;
figure;
hold on;
for R = 4.1
    x = zeros(n,1);
    x(1) = 0.2;
    for i = 2:n
        x(i) = R * x(i-1) * (1 - x(i-1));
    end
    drawnow;
%     subplot(2,2,1:2);
    scatter(1:n,x);
    axis([1 n 0 1]);
    xlabel('n');
    ylabel('x_{n}');
%     subplot(2,2,3);
%     scatter(x(1:n-1),x(2:n));
%     axis([0 1 0 1]);
%     xlabel('x_{n}');
%     ylabel('x_{n+1}');
%     subplot(2,2,4);
%     scatter(x(1:n-2),x(3:n));
%     axis([0 1 0 1]);
%     xlabel('x_{n}');
%     ylabel('x_{n+2}'); 
%     pause(.2)
end

