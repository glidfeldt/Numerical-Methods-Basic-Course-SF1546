close, clear, clc
%Startvilkor
u0=[0.8,0];
T=10;
h=0.01;
n=T/h;

[tApp,yApp] = rk4Approx(u0,T,n);
[tRK4,yRK4] = rk4(u0,T,n);
plot(tApp, yApp(:,1));
hold on
plot(tRK4, yRK4(:,1));
title('Lösning för vinkel')
xlabel('Tid (s)')
ylabel('Grader (radianer)')
legend('Approx','RK4')

%Ändring i slutvärde
diff=abs(yApp(end,1)-yRK4(end,1))