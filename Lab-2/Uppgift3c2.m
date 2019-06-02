clc,clear all
format long
q0=2000; q1=100;
fel0=100; fel1=5;
n=[80, 20, 40, 80];

%n=10
x0=zeros(n(1));
T0=zeros(n(1));
T1=zeros(n(1));
Tref=zeros(n(1));
[x0, T0]=stav(n(1), q0+fel0, q1);
[x0, T1]=stav(n(1), q0, q1+fel1);
[x0, Tref]=stav(n(1), q0, q1);
fel=abs(T0-Tref)*fel0+abs(T1-Tref)*fel1
