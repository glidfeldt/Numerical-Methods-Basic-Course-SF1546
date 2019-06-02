clear all, clc
ra=1.5; rb=1.0; rc=0.7;
a=[-0.5 2]; b=[3.8 0.0]; c=[0.8 -2.8];

Xrot=zeros(3,4);

tau=1e-7;


%A och B
X0=[0.2 3.3 4.3 0.8]';
[AB]=punkter(X0,ra,rb,a,b,tau)



%B och C
X1=[1.24 -3.34 4.43 -0.77]';
[BC]=punkter(X1,rc,rb,c,b,tau)


%C och A
X3=[-2 1 0.16 -3.1]';
[CA]=punkter(X3,ra,rc,a,c,tau)

circle(a(1), a(2), ra);
circle(b(1), b(2), rb);
circle(c(1), c(2), rc);
length=line(AB);
length=length+line(BC);
length=length+line(CA);

AngleA=angle([AB(1) AB(2)], [CA(3) CA(4)]);
A=AngleA*ra;

AngleB=angle([AB(3) AB(4)], [BC(1) BC(2)]);
B=AngleB*rb;


AngleC=angle([CA(1) CA(2)], [BC(3) BC(4)]);
C=AngleC*ra;

length
length=length+A+B+C
