close, clear, clc
%syms R theta Rprim thetaprim
T=20;
h=0.05;
n=T/h;
v0=1;
R=1*tan(pi/6);
u=[R 0 0 v0/R]';
t=0;

tspan=[0 5];



[t,y]=ode45('fkula', tspan, u);
[m, n]=size(y);
position=zeros(m,3);

for i=1:m
    position(i,1) = y(i,1)*cos(y(i,2)); %x
    position(i,2) = y(i,1)*sin(y(i,2)); %y
    position(i,3) = y(i,1)/tan(pi/6); %z
end
plot(t, position)

plotkula(position(:,1),position(:,2),position(:,3),1);

