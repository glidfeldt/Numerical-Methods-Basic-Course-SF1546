close, clear, clc
T=20;
h=0.05;
v0=1;
n=T/h;
R=1*tan(pi/6);
u0=[R 0 0 v0/R]';

[t,y] = rk4kula(u0,T,n);

position=zeros(n+1,3);
y;
for i=1:n+1
    position(i,1) = y(i,1)*cos(y(i,2)); %x
    position(i,2) = y(i,1)*sin(y(i,2)); %y
    position(i,3) = y(i,1)/tan(pi/6); %z
end
%{
subplot(2,1,1)
plot(position(:,1), position(:,2));
hold on
title('Plot x mot y')
xlabel('x-koordinat')
ylabel('y-koordinat')
subplot(2,1,2)
plot(t, position(:,3));
hold on
title('Plot z mot tid')
xlabel('Tid (s)')
ylabel('z-koordinat')
%}

plotkula(position(:,1),position(:,2),position(:,3),1);