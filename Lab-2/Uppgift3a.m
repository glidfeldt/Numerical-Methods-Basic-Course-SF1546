close, clear, clc
% Vilkor—————————————————————————————————
L=2; k=3; t0=290; t1=320; q0=2000; q1=100;
%————————————————————————————————————————
n=10;
h = L/(n+1);
%Matrisen(Uppgift 3a)————————————————————
v1 = ones(n-1,1);
v2 = -2*ones(n,1);
A = diag(v1,-1) + diag(v2) + diag(v1,1);
%Högerled————————————————————————————————
x = linspace(h,L-h,n);
Q = q0*exp(-q1*(x-0.35*L).^2) + 200;
b = h^2/k*Q;
b(1) = b(1) - t0;
b(n) = b(n) - t1;
%Lösning
T = A\b';
Ttot = [t0; T; t1];
xtot = linspace(0,L,n+2);

plot(xtot,Ttot)
hold on
grid on
title('Uppgift3b')
xlabel('Längd (m)')
ylabel('T(x)')
