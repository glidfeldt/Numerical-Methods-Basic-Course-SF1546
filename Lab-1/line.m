function [length]=line(AB)
plot(AB(1), AB(2), 'x')
hold on
plot(AB(3), AB(4), 'x')
hold on
plot([AB(1) AB(3)], [AB(2) AB(4)])
hold on
length=abs(AB(4)-AB(2))+abs(AB(3)-AB(1));
end

