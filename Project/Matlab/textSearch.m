clc;
clear all;
str = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';
search = 'secte';

noOfAgents = 5;

initFunc = @LogisticMap;
x = initFunc(rand, (length(str)-length(search)+1));
[~,I] = sort(x);

% I = randi((length(str)-length(search)+1), length(str),1);

agentPosition = I(1:noOfAgents);
agentState = zeros(noOfAgents,1);
count = 0;
ptr = noOfAgents+1;
flag = true;
while(flag)    

    agentHyp = [];
    for i = 1:noOfAgents
        agentHyp = [agentHyp; str(agentPosition(i):(agentPosition(i)+length(search)-1))];
    end

    for i = 1:noOfAgents
        pos = randi(length(search));
        if(agentHyp(i,pos) == search(pos))
            agentState(i) = 1;
        end
    end
    
    for i = 1:noOfAgents
        if(agentState(i) == 0)
            comm = randi(noOfAgents);
            if(agentState(comm) == 1)
                agentPosition(i) = agentPosition(comm);
            else
                agentPosition(i) = I(ptr);
                ptr = ptr+1;
            end
        end
    end
    
    if(sum(agentState == 0) == 0)
        flag = false;
        agentState(1:noOfAgents) = 0;
        for i = 1:noOfAgents
           if(~strcmp(agentHyp(i,:),search))
                flag = true;
                break
           end
        end
    end
    count = count + 1;
end