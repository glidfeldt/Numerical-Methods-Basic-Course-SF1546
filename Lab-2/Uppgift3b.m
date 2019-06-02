q0=2000; q1=100; n=4;
[t,u]=rk4([0 1],1,10); size(u)
[x,T]=stav(n, q0, q1);
plot(x,T)
hold on
grid on
title('Uppgift3b')
xlabel('Längd (m)')
ylabel('T(x)')