clc,clear all
q0=2000; q1=100;
n=[10, 20, 40, 80];

%n=10
[x1, T1]=stav(n(1), q0, q1);
%n=20
[x2, T2]=stav(n(2), q0, q1);
%n=40
[x3, T3]=stav(n(3), q0, q1);
%n=80
[x4, T4]=stav(n(4), q0, q1);

%Plot
plot(x1,T1,x2,T2,x3,T3,x4,T4)
hold on
grid on
title('Uppgift 3c')
xlabel('X-kordinat')
ylabel('T(x)')
legend('Location','southeast',{'n=10','n=20','n=40','n=80'})

%Print
small=zeros(length(n),1);
small(1)=min(T1);
small(2)=min(T2);
small(3)=min(T3);
small(4)=min(T4);

big=zeros(length(n),1);
big(1)=max(T1);
big(2)=max(T2);
big(3)=max(T3);
big(4)=max(T4);

medel=zeros(length(n),1);
medel(1)=mean(T1);
medel(2)=mean(T2);
medel(3)=mean(T3);
medel(4)=mean(T4);

fel=zeros(length(n),1);
fel(1)=max(abs(diff(T1)))/3
fel(2)=max(abs(diff(T2)))/3
fel(3)=max(abs(diff(T3)))/3
fel(4)=max(abs(diff(T4)))/3

table(n',small,big,medel,fel)


