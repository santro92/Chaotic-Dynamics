data = csvread('out2.txt');
x = data(:,1);
time = data(:,2);

hold on
plot(x(1:51),exp(time(1:51)));
% plot(x(1:51),exp(time(52:102)));
% plot(x(1:51),exp(time(103:153)));
% plot(x(1:51),time(154:204));
% plot(x(1:51),time(205:255));
% colorstring = 'bgkry';
% for i=1:5
%    
%     for j=1:51
%         plot(x(j),time(i*j),'.','Color', colorstring(i))
%     end
% end