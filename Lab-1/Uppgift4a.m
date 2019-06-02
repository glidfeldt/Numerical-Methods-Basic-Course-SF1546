clear all
format long
y=@(x) pi*((4./((1+x).*(7-4.*cos(pi.*x)))).^2);

steglangd=[10 20 30 40 50 60];
h=zeros(6,1);
i=1;
for n=steglangd
    h(i)=2.9/n;
    i=i+1;
end
resultTrapets=zeros(6,1);
resultSimpsons=zeros(6,1);

i=1;
V=simpson(1000000);
for n=steglangd
    resultTrapets(i)=abs(V-trapets(n));
    resultSimpsons(i)=abs(V-simpson(n));
    i=i+1;
end
loglog(h, resultTrapets, h, resultSimpsons)
xlabel('h')
ylabel('Error(h)')
legend('trapets','simpson')
grid on


%3 decimale
%Desto mindre steglängd, desto mer tillförlitligt svar

%Noggranhetsordning ordio(h^p): Trapets: 2, Simpson:4
