function [Xrot] = punkter(X0,ra,rb,a,b,tau)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
a1=a(1); a2=a(2); b1=b(1); b2=b(2);
dx=1; iter=0;
while dx>tau
    x1=X0(1); y1=X0(2); x2=X0(3); y2=X0(4);
    f=[abs(x1-a1)^2+abs(y1-a2)^2-ra^2
        abs(x2-b1)^2+abs(y2-b2)^2-rb^2
        (x1-a1)*(x1-x2)+(y1-a2)*(y1-y2)
        (x2-b1)*(x1-x2)+(y2-b2)*(y1-y2)];
    J=[2*(x1-a1) 2*(y1-a2) 0 0
        0 0 2*(x2-b1) 2*(y2-b2)
        -a1+2*x1-x2 -a1-y2+2*y1 a1-x1 a2-y1
        x2-b1 y2-b2 b1+x1-2*x2 b2-2*y2+y1];
    h=J\f;
    X0=X0-h;
    dx=norm(h)
    iter=iter+1;
end
Xrot=X0';

end

