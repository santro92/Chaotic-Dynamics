clc;
t =0;
n = 200;
beta = 0.9;
e0 = 0.01;

x = zeros(1,n);
y = zeros(1,n);
z = zeros(1,n);

f = @Lorenz;
%  f = @Rossler;
for e0 = [0.3]
intCond = [-13,-12,52];
h = 0.001;
for i = 1:n
    flag = 1;
    while flag
        fullStep = nextPoint(f,intCond,h);
        halfStep = nextPoint(f,nextPoint(f,intCond,h/2),h/2);
 
        e = norm((fullStep - halfStep),inf);
        if(e < e0)
            h = beta*h*power((e0/e),(1/5));
            intCond = nextPoint(f,nextPoint(f,intCond,h/2),h/2);
            flag = 0;
        else
            h = beta*h*power((e0/e),(1/4));
        end
    end
    
    x(i) = intCond(1);
    y(i) = intCond(2);
    z(i) = intCond(3);
end
figure
plotFunc(x,y,z)
end



