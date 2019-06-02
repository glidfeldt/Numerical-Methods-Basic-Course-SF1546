close, clear, clc
%Startvilkor
u0=[0.2,0];
T=3;
h=0.01;
n=T/h;

%Lösning 1a och 1b - Euler och RK4
[tEuler,yEuler] = feuler(u0, T,n);
[tRK4,yRK4] = rk4(u0,T,n);

%Plot av lösning
subplot(2,1,1);
plot(tEuler, yEuler(:,1))
hold on
plot(tRK4, yRK4(:,1))
title('Lösning för vinkel')
xlabel('Tid (s)')
ylabel('Grader (radianer)')
legend('Euler','RK4')
subplot(2,1,2)
plot(tEuler,yEuler(:,2))
hold on
plot(tRK4, yRK4(:,2))
title('Lösning för vinkelhastighet')
xlabel('Tid (s)')
ylabel('Vinkelhastighet (radianer/s)')
legend('Euler','RK4')


%Tabell
nValues=[n; 2*n; 4*n; 8*n; 16*n; 32*n; 64*n; 128*n];
eulerResult=zeros(length(nValues),1);
rk4Result=zeros(length(nValues),1);
eulerKvot=zeros(length(nValues),1);
rk4Kvot=zeros(length(nValues),1);
for counter=1:length(nValues)
    [tEuler,yEuler]=feuler(u0, T,nValues(counter));
    eulerResult(counter)=yEuler(end,1);
    [tRK4, yRK4]=rk4(u0, T,nValues(counter));
    rk4Result(counter)=yRK4(end,1);
end
for i=1:length(nValues)-2
    eulerKvot(i)=(eulerResult(i)-eulerResult(i+1))/(eulerResult(i+1)-eulerResult(i+2));
    rk4Kvot(i)=(rk4Result(i)-rk4Result(i+1))/(rk4Result(i+1)-rk4Result(i+2));
end
tabell=table(nValues, eulerResult, rk4Result, eulerKvot, rk4Kvot)

%Teoretiskt noggranhetsordning RK4: 4
