load eiffel1.mat
trussplot(xnod, ynod, bars);
hold on;
nod=58;
forces = zeros(2*length(xnod),1);
forces(nod*2-1) = 1;
x=A\forces;
xbel = xnod + x(1:2:end);
ybel = ynod + x(2:2:end);
trussplot(xbel, ybel, bars);
hold on;
plot(xbel(nod),ybel(nod),'*')