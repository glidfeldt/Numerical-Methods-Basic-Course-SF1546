function [t,y] = rk4kula(u0,T,n)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
t0=0;
h=T/n;
t=zeros(n+1,1);
y=zeros(n+1,4);
for i=1:n+1
   t(i)=t0;
   f1 = fkula(t0,u0); 
   f2 = fkula(t0,u0+h*f1/2);
   f3 = fkula(t0,u0+ h*f2/2);
   f4 = fkula(t0,u0+h*f3);
   u0 = u0 + h*(f1 + 2*(f2+f3) + f4)/6;
   y(i,1)=u0(1); %radie
   y(i,2)=u0(2); %vinkel
   y(i,3)=u0(3); %pradie
   y(i,4)=u0(4); %pvinkel
   t0=t0+h;
end
end

