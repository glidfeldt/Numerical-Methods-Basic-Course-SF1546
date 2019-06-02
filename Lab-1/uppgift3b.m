clear all
clc
X0=[-0.89 1.79 2.19 1.39]'; %[x1 y1 x2 y2]
X1=[-1 0.2 2 -1.4]';
ra=0.8;
rb=1.4;
a=[-1 1];
b=[2 0];
tau=1e-7;

[Xrot0]=punkter(X0,ra,rb,a,b,tau)
[Xrot1]=punkter(X1,ra,rb,a,b,tau)

circle(a(1), a(2), ra);
circle(b(1), b(2), rb);
line(Xrot0);
line(Xrot1);