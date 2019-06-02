clear all
format long
y=@(x) pi*((4./((1+x).*(7-4.*cos(pi.*x)))).^2);
trapresult=zeros(7,1);
kvotTrap=zeros(7,1);
kvotSimp=zeros(7,1);
simpresult=zeros(7,1);
h=zeros(7,1);
n=320;
for counter=1:7
    h(counter)=2.9/n;
    trapresult(counter)=trapets(n);
    simpresult(counter)=simpson(n);
    n=n/2;
end
for i=1:5
    kvotTrap(i)=(trapresult(i)-trapresult(i+1))/(trapresult(i+1)-trapresult(i+2));
    kvotSimp(i)=(simpresult(i)-simpresult(i+1))/(simpresult(i+1)-simpresult(i+2));
end
tabell=table(h, trapresult, simpresult, kvotTrap, kvotSimp)
