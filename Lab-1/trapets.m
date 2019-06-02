function [V] = trapets(n)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
y=@(x) pi*((4./((1+x).*(7-4.*cos(pi.*x)))).^2);
a=0;
b=2.9;
L=b-a;
h=L/n;
x=a+[1:n-1]*h;
T0=(y(a)+y(b))/2;
V=h*(T0+sum(y(x)));
end

