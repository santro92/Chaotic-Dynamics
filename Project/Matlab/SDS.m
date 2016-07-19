clc;
noOfAgents = 100;
nDim = 2;  
xMin = -2.48;
xMax = 2.48;
agentPosition = zeros(noOfAgents, nDim);

drawnow;
%Initialisation-phase%
initFunc = @LogisticMap;
for i = 1:nDim
   agentPosition(:,i) = xMin + (initFunc(rand, noOfAgents) * (xMax - xMin));
%    agentPosition(:,i) = xMin + (rand(noOfAgents,1) * (xMax - xMin));
end

% v = VideoWriter('sds1.avi');
% v.FrameRate = 10;
% open(v);
 set(gca,'nextplot','replacechildren'); 
 set(gcf, 'Color','white')
 axis tight

flag = true;
tic
count = 0;
while(flag)    
    
    %Fitness Calcuation%
    fitnessFunc = @Rosenbrock;
    agentFitnessValue = fitnessFunc(agentPosition(:,1), agentPosition(:,2));
    
    
    %Test-phase%
    agentState = zeros(noOfAgents,1);
    for i = 1:noOfAgents
%         hold on;
        if(agentFitnessValue(i) < agentFitnessValue(randi(noOfAgents)))
            agentState(i) = 1;
%             plot3(agentPosition(i,1),agentPosition(i,2),agentFitnessValue(i),'b.','MarkerSize',10);
        else
            agentState(i) = 0;
        end
%         hold off;
    end
   
%     frame = getframe;
%     writeVideo(v,frame);

    %Diffusion-phase%
    if(min(agentFitnessValue) < 1E-03)
        flag = false;
    end
    
    for i = find(agentState == 0)'
        randomAgent = randi(noOfAgents);
        if(agentState(randomAgent) == 1)
            agentPosition(i) = agentPosition(randomAgent) + 0.1;
        else
            agentPosition(i,:) = xMin + (initFunc(rand, nDim) * (xMax - xMin));
        end
    end
    count = count + 1;
end
toc
count
 clf;
 rb;
    for i = 1:noOfAgents
         hold on;
        if(agentFitnessValue(i) < agentFitnessValue(randi(noOfAgents)))
            agentState(i) = 1;
             plot3(agentPosition(i,1),agentPosition(i,2),agentFitnessValue(i),'b.','MarkerSize',10);
        else
            agentState(i) = 0;
        end
        hold off;
    end
%  plot3(agentPosition(:,1),agentPosition(:,2),agentFitnessValue,'b.','MarkerSize',10);
  view([30 30 30])
% close(v)

