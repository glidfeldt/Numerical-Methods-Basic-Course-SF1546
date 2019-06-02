function [Xrot] = fixpunkt(x0, tau)
%Algoritm för fixpunktsmetoden
%Tar in: x0 uppskattning, tau accepterad felmarginal för
%approximation
%Returnerar: approximation av roten
G=@(x) (1/15)*x^2+(7/15)*x-(2/3)*cos(2*x)+1;
xold=x0; x0=feval(G, x0);
dx=x0-xold;
n=1;
while abs(dx)>tau
    xold=x0;
    x0=feval(G, x0);
    dx=x0-xold
    n=n+1;
end
Xrot=x0;
end

