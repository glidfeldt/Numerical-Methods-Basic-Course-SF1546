function [t,y] = feuler(u0, T,n)
%u0 - startvinkel, T - sluttid, n - antalet tidssteg (T/h)
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
   y0=y0+h*fg(y0);
   y(i,1)=y0(1);
   y(i,2)=y0(2);
   t0=t0+h;
end
end

