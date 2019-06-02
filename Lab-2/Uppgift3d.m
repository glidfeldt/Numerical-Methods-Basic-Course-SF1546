clc,clear all
q0=2000; q1=100;
q0Fake=[q0-100,q0, q0+100]; q1Fake=[q1-5,q1, q1+5];
n=80;

%Riktig lösning
[xReal, TReal]=stav(n, q0, q1);


%Störningar
m=length(q0Fake)*length(q1Fake);
tFake=zeros(n+2,m);
xFake=zeros(n+2,m);
counter=1;
for i=1:length(q0Fake)
    for j=1:length(q1Fake)
        [xFake(:,counter), tFake(:,counter)]=stav(n, q0Fake(i), q1Fake(j));
        counter=counter+1;
    end
end

testOfVar=zeros(m,1)
for i=1:m
    testOfVar(i)=norm(tFake(:,i)-TReal(:,1))/norm(TReal(:,1));;
end

values={'q0-100 och q1-5';'q0-100 och q1';'q0-100 och q1+5'
    'q0 och q1-5';'q0 och q1';'q0 och q1+5'
    'q0+100 och q1-5';'q0+100 och q1';'q0+100 och q1+5'}
table(values,testOfVar)
