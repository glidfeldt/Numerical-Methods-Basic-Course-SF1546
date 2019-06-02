clear all
x = [-10:0.1:10];
f = x.^2-8*x-10*cos(2*x)+15;
plot(x,f);
grid on
%plotten visar att den skär x-axeln 4 ggr mellan 0 och 10.
%ungefärliga värden för lösningarna noteras nedanför
x0=[2.4 4 5.5 6.5];
fprintf('Fixpunkt\n');
for element=x0
    xrot=fixpunkt(element, 1e-10);
    fprintf('Lösning: %d\n', xrot);
end
%x(n+1) beräknas med G(n). x(n+1) motsvarar ekvation 2
%kan endast hitta lösningar när derivtan till funktionen i lösningen är mindre än 1.
%abs(fprim(x))<1
%Trunkeri

fprintf('\nNewton\n');
for element=x0
    xrot=newton(element, 1e-10);
    fprintf('Lösning: %d\n', xrot);
end
%Newton konvergerar snabbast
%Konvergensordning – Newton: 2, Fixpunkt: 1
%stämmde


