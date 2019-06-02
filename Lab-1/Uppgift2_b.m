
time = zeros(1,4);
lengths = zeros(1,4);
%Eiffel 1
load eiffel1.mat
node=49;
force = zeros(2*length(xnod),1);
force(2*node-1)=1;
tic
A\force;
time(1)=toc;
lengths(1)=length(xnod);

%Eiffel 2
load eiffel2.mat
node=49;
force = zeros(2*length(xnod),1);
force(2*node-1)=1;
tic
A\force;
time(2)=toc;
lengths(2)=length(xnod);

%Eiffel 3
load eiffel3.mat
node=49;
force = zeros(2*length(xnod),1);
force(2*node-1)=1;
tic
A\force;
time(3)=toc;
lengths(3)=length(xnod);

%Eiffel 4
load eiffel4.mat
node=49;
force = zeros(2*length(xnod),1);
force(2*node-1)=1;
tic
A\force;
time(4)=toc;

lengths(4)=length(xnod);
loglog(2*lengths, time);
grid on
xlabel('N (Antal obekanta)')
ylabel('T (Tidsatgang)')

%Enligt teorin om Gauseleminering så är tidskomplexiteten N^3 


