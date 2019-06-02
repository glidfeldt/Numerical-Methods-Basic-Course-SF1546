syms x1 y1 x2 y2
P1=@(x1, y1, x2, y2) norm([x1 y1]-a)^2-ra^2;
P2=@(x1, y1, x2, y2) norm([x2 y2]-b)^2-rb^2;
P3=@(x1, y1, x2, y2) ([x1 y1]-[x2 y2])*([x1 y1]-a)';
P4=@(x1, y1, x2, y2) ([x1 y1]-[x2 y2])*([x2 y2]-b)';
F = [P1, P2, P3, P4];
X0=[-1, 1.8, 2, 1.4];
J=jacobian(F,)
