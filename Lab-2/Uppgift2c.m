close, clear, clc
T=20;
h=0.05;
v0=1;
n=T/h;
R=1*tan(pi/6);
u0=[R 0 0 v0/R]';
tspan=[0 5];


[tRK4,yRK4] = rk4kula(u0,T,n);
positionRK4=zeros(n+1,3);
for i=1:n+1
    positionRK4(i,1) = yRK4(i,1)*cos(yRK4(i,2)); %x
    positionRK4(i,2) = yRK4(i,1)*sin(yRK4(i,2)); %y
    positionRK4(i,3) = yRK4(i,1)/tan(pi/6); %z
end

[tODE,yODE]=ode45('fkula', tspan, u0);
[m, n]=size(yODE);
positionODE=zeros(m,3);
for i=1:m
    positionODE(i,1) = yODE(i,1)*cos(yODE(i,2)); %x
    positionODE(i,2) = yODE(i,1)*sin(yODE(i,2)); %y
    positionODE(i,3) = yODE(i,1)/tan(pi/6); %z
end

plotkula(positionODE(:,1),positionODE(:,2),positionODE(:,3));
plotkula(positionRK4(:,1),positionRK4(:,2),positionRK4(:,3));