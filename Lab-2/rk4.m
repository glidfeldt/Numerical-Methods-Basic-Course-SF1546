function [t,y] = rk4(u0,T,n)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
%Konstanter
m=0.3;
L=1;
g=9.81;
my=0.1;
%Startvilkor
y0=u0; %vinkel och hastighet
h=T/n;
t0=0;
t = zeros(n+1,1);
y = zeros(n+1, 2);

fg = @(u) [u(2), -(my/m)*u(2)-(g/L)*sin(u(1))]
for i=1:n+1
   t(i)=t0;
   f1 = fg(y0); 
   f2 = fg(y0+ h*f1/2);
   f3 = fg(y0+ h*f2/2);
   f4 = fg(y0+h*f3);
   y0 = y0 + h*(f1 + 2*(f2+f3) + f4)/6;
   y(i,1)=y0(1);
   y(i,2)=y0(2);
   t0=t0+h;
end
end

