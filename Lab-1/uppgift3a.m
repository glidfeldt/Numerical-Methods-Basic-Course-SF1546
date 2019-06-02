clear all
syms x1 y1 x2 y2 ra rb a1 a2 b1 b2;
X1=[x1 y1];
X2=[x2 y2];
A=[a1 a2];
B=[b1 b2];


P1 =norm(X1-A)^2-ra^2;
P2 =norm(X2-B)^2-rb^2;
P3 =(X1-X2)*(X1-A).';
P4 =(X1-X2)*(X1-B).';

F = [P1, P2, P3, P4];
F'
v = [x1, y1, x2, y2];

M=jacobian(F,v)

