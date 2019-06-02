clear all;

load eiffel1.mat;
xlength = length(xnod);
results=zeros(xlength,1);
i=1;
for node=1:xlength
    sqrtsum=totalForSkjut(A, node, xlength);
    results(i)=sqrtsum;
    i=i+1;
end 
[minValue, minIndex]=min(results);
[maxValue, maxIndex]=max(results);
trussplot(xnod,ynod,bars);
hold on

plot(xnod(minIndex),ynod(minIndex),'*')
hold on
plot(xnod(maxIndex),ynod(maxIndex),'o')

function [sqrtxsum] = totalForSkjut(A, node, xlength)
    b=zeros(2*xlength,1);
    b(node*2-1)=-1;
    x=A\b;
    xd=x(1:2:end);
    yd=x(2:2:end);
    i=1;
    xsum=0;
    while i<=xlength
        xsum=xsum+xd(i)^2+yd(i)^2;
        i=i+1;
    end
    sqrtxsum=xsum;
end