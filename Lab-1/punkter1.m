function [Xrot1] = punkter1(X0,ra,rb,a,b,tau)
hnorm=1; x=X0;
disp('        x(1)               x(2)                 x(3)              KvadTest')
while hnorm>tau*norm(x)
    oldhnorm=hnorm;
    f=[norm([X0(1) X0(2)]-a)^2-ra^2
        norm([X0(3) X0(4)]-b)^2-rb^2
        ([X0(1) X0(2)]-[X0(3) X0(4)])*([X0(1) X0(2)]-a)'
        ([X0(1) X0(2)]-[X0(3) X0(4)])*([X0(3) X0(4)]-b)'];
    J=J=[2*abs(X0(1)+1)*sign(X0(1)+1) 2*abs(X0(3)-1)*sign(X0(3)-1) 0 0
        0 0 2*abs(X0(3)-2)*sign(X0(3)-2) 2*abs(X0(4))*sign(X0(4))
        2*X0(1)-X0(3)+1 2*X0(2)-X0(4)-1 -X0(1)-1 1-X0(2)
        2*X0(1)-X0(3)-2 2*X0(2)-X0(4) 2-X0(1) -X0(3)];
    h=J\f;
    x=x-h';
    hnorm=norm(h);
    Kvadtest=hnorm/oldhnorm^2;
    disp([x, Kvadtest]);
end
Xrot1=x'
end
J=[2*abs(X0(1)+1)*sign(X0(1)+1) 2*abs(X0(3)-1)*sign(X0(3)-1) 0 0
        0 0 2*abs(X0(3)-2)*sign(X0(3)-2) 2*abs(X0(4))*sign(X0(4))
        2*X0(1)-X0(3)+1 2*X0(2)-X0(4)-1 -X0(1)-1 1-X0(2)
        2*X0(1)-X0(3)-2 2*X0(2)-X0(4) 2-X0(1) -X0(3)];
