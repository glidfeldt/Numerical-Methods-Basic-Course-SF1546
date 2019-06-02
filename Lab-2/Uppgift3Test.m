close,clear,clc
% Vilkor—————————————————————————————————
L=2; k=3; t0=290; t1=320; q0=2000; q1=100;
BV=[290, 320]; %Randvilkor
Intervall=[0, L];
Q = @(x) q0*exp(-q1*(x-0.35*L)^2)+200

% Nätet—————————————————————————————————
n=10;
h=(Intervall(2)-Intervall(1))/n;
x=linspace(0,L,n+1)';

%Högerled—————————————————————————————————
b=zeros(n+1,1);
for i=2:length(b)-1
    b(i)=Q(x(i));
end
b(2:end-1)=Q(x(2:end-1));
b(1)=BV(1);
b(2)=BV(2);
b=(h^2/k)*b;

%Vänsterled——————————————————————————————
A=zeros(n)