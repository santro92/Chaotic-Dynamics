clc;
rk4;
n = 1;
% t0 = 0.6347;
t0 = 0.8463;
% t0 = 0.75;
figure
hold on;
for i = 1:numel(time)
    while (i<numel(time) && time(i) < n*t0)
        i = i+1;
    end
    if i >= numel(time)
        break;
    end
    n = n+1;
    drawnow;
    plot(mod(theta(i),2*pi),omega(i),'b.');
    xlabel('\theta')
    ylabel('\omega')
%     axis([-1 7 -0.1 0.1])
%     plot3(mod(round(theta(i),2),2*pi),omega(i),n*t0,'b.');
end
