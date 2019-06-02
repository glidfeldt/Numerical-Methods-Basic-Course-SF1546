function xrot = newton(x0,tau)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
f = @(x) x^2-8*x-10*cos(2*x)+15;
fprim = @(x) 2*x+40*sin(x)*cos(x)-8;
xold=x0; x0=xold-feval(f, xold)/feval(fprim, xold);
dx=x0-xold;
n=1;
while abs(dx)>tau
    xold=x0;
    x0=xold-feval(f, xold)/feval(fprim, xold);
    dx=x0-xold
    n=n+1;
end
xrot=x0;
end

