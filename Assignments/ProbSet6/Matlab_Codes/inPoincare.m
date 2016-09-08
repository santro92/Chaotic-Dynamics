clc;
rk4;
n = 1;
% t0 = 0.6347;
t0 = 0.8463;
figure;
hold on;
for i = 1:numel(time)
    while (i<numel(time) && time(i) < n*t0)
        i = i+1;
    end
    if i >= numel(time)
        break;
    end
    newOmega = ((n*t0 - time(i))/(time(i+1) - time(i)) * (omega(i+1) - omega(i))) + omega(i);
    newtheta = ((n*t0 - time(i))/(time(i+1) - time(i)) * (theta(i+1) - theta(i))) + theta(i);
    n = n+1;
    i = i+1;
    plot(mod(newtheta,2*pi),newOmega,'r.');
%     plot3(mod(round(newtheta,2),2*pi),newOmega,n*t0,'r.');
end


