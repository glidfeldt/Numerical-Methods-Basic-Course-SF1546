close, clear, clc
v0=1;
R=1*tan(pi/6);
u0=[R 0 0 v0/R]';
m = 1;      % Massan
g = 9.81;   %gravity

%RK4 med h=0.05, y=1001x4
T=50;
h=0.05;
n=T/h;
[t1,y] = rk4kula(u0,T,n);
[k,n]=size(y);
L1=zeros(k,1);
E1=zeros(k,1);

for i=1:k
    L1(i)=m*y(i,4)*y(i,1)^2;
    E1(i)=(m*(y(i,1)*y(i,4))^2)/2+m*g*(y(i,1)/tan(pi/6));
end


%RK4 med h=0.01, y=5001x4
h=0.01;
n=T/h;
[t2,y] = rk4kula(u0,T,n);
[k,n]=size(y);
L2=zeros(k,1);
E2=zeros(k,1)
for i=1:k
    L2(i)=m*y(i,4)*y(i,1)^2;
    E2(i)=(m*(y(i,1)*y(i,4))^2)/2+m*g*(y(i,1)/tan(pi/6));
end

%ODE45 
tspan=[0 T];
[t3,y]=ode45('fkula', tspan, u0);
[k,n]=size(y);
L3=zeros(k,1);
E3=zeros(k,1);
for i=1:k
    L3(i)=m*y(i,4)*y(i,1)^2;
    E3(i)=(m*(y(i,1)*y(i,4))^2)/2+m*g*(y(i,1)/tan(pi/6));
end
subplot(2,1,1)
plot(t1, L1)
hold on
plot(t2, L2)
plot(t3, L3)
title('L(t)')
xlabel('Tid (s)')
ylabel('L [N·m·s]')
legend('Location','northwest',{'h=0.05','h=0.01','ode45'})
subplot(2,1,2)
plot(t1, E1)
hold on
plot(t2, E2)
plot(t3, E3)
title('E(t)')
xlabel('Tid (s)')
ylabel('E [N·m]')
legend('Location','northwest',{'h=0.05','h=0.01','ode45'})


%Bästa metod RK4 med liten steglängd