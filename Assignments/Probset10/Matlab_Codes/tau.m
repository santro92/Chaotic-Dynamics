data = csvread('text.txt');
hold on
plot(log(data(1:100,1)),data(1:100,2))
plot(log(data(101:200,1)),data(101:200,2))
plot(log(data(201:300,1)),data(201:300,2))
plot(log(data(301:400,1)),data(301:400,2))
plot(log(data(401:500,1)),data(401:500,2))
% plot(log(data(1:99,1)),data(1:99,2))
% plot(log(data(100:198,1)),data(100:198,2))
% plot(log(data(199:297,1)),data(199:297,2))
% plot(log(data(298:396,1)),data(298:396,2))
% plot(log(data(397:495,1)),data(397:495,2))
xlabel('log \epsilon');
ylabel('C(m,\epsilon)');