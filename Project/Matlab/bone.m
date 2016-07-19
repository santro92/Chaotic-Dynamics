clc;
clear all;
img = imread('BoneScan3.png');
img = rgb2gray(img);
subplot(1,2,1);
imshow(img);
[X,Y] = size(img);
pos = [-2 -1 0 1 2];

noOfAgents = 10000;
agentPosition = zeros(noOfAgents, 2);
agentState = zeros(noOfAgents,1);
intensity = 180;
chaotic = true;
%Initialisation-phase%
if(chaotic)
    initFunc = @LogisticMap;
    x = initFunc(rand, noOfAgents);
    [~,I] = sort(x);
    agentPosition(:,1) = mod(I,X);
    y = initFunc(rand, noOfAgents);
    [~,I] = sort(y);
    agentPosition(:,2) = mod(I,Y);
    agentPosition(agentPosition == 0) = 1;
else
    agentPosition(:,1) = randi(X,noOfAgents,1);
    agentPosition(:,2) = randi(Y,noOfAgents,1);
end

% v = VideoWriter('peaks.avi');
% v.FrameRate = 2;
% open(v);
% set(gca,'nextplot','replacechildren'); 
% set(gcf, 'Color','white')
% axis tight

f = @(img,x,y) mean2(img(x-1:x+1, y-1:y+1));
count = 1;
max = 10;
temp =[];
while(count <= max)
    for i = 1:noOfAgents
        x = agentPosition(i,1);
        y = agentPosition(i,2);
        if(x>1 && y>1 && x<X && y<Y)
            if(f(img,agentPosition(i,1),agentPosition(i,2)) > intensity)
                agentState(i) = 1;
            end
        end
    end
    temp = [temp;length(find(agentState == 1))]
%     temp = agentPosition(agentState == 1,:);
    newImage = 255*ones(X,Y);
    for i = 1:length(agentPosition)
        newImage(agentPosition(i,1),agentPosition(i,2)) = 0;
    end
     
%     frame = getframe;
%     writeVideo(v,frame);
    
    
    inactiveAgents = [];
    for i = 1:noOfAgents
        if(agentState(i) == 0)
            randomAgent = randi(noOfAgents);
            if(agentState(randomAgent) == 1)
                x = agentPosition(randomAgent,1) + pos(randi(length(pos)));
                y = agentPosition(randomAgent,2) + pos(randi(length(pos)));
                if(x>1 && y>1 && x<X && y<Y)
                    agentPosition(i,1) = x;
                    agentPosition(i,2) = y;
                end
            else
                inactiveAgents = [inactiveAgents i];
            end
        else
            x=agentPosition(i,1) + pos(randi(length(pos)));
            y=agentPosition(i,2) + pos(randi(length(pos)));
            if(x>1 && y>1 && x<X && y<Y)
                agentPosition(i,1) = x;
                agentPosition(i,2) = y;
            end
        end
        
    end
    
    if(chaotic)
        x = initFunc(rand, length(inactiveAgents));
        [~,I] = sort(x);
        agentPosition(inactiveAgents,1) = mod(I,X);
        y = initFunc(rand, length(inactiveAgents));
        [~,I] = sort(y);
        agentPosition(inactiveAgents,2) = mod(I,Y);
        agentPosition(agentPosition == 0) = 1;
    else
        agentPosition(inactiveAgents,1) = randi(X,length(inactiveAgents),1);
        agentPosition(inactiveAgents,2) = randi(Y,length(inactiveAgents),1);
    end
    count = count + 1;
    
end
subplot(1,2,2);
imshow(newImage);

% close(v)
