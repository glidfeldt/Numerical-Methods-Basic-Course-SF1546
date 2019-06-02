
%%% parameters %%%
n = 10; % #inner points
L = 2;
k = 3;
t0 = 290;
t1 = 320;
q0 = 2000;
q1 = 100;
%%% construction of A %%%
v1 = ones(n-1,1);
v2 = -2*ones(n,1);
A = diag(v1,-1) + diag(v2) + diag(v1,1);

%%% construction of b %%%
h = L/(n+1);
x = linspace(h,L-h,n);
Q = q0*exp(-q1*(x-0.35*L).^2) + 200;
b = h^2/k*Q;
b(1) = b(1) - t0;
b(n) = b(n) - t1;

%%% solve for AT = b %%%
T = A\b';
Ttot = [t0; T; t1];
xtot = linspace(0,L,n+2);
plot(xtot,Ttot)




