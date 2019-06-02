function [ time ] = solveTime( A,xnod )
%Tid för enkel Gauss.
%   Detailed explanation goes here


extension=zeros(length(xnod),1);
force=zeros(length(xnod)*2,1);

tic
for i=1:length(xnod)
    force(2*i)=-1;
    solution=A\force;
    extension(i)=norm([solution(2*i), solution(2*i-1);]);
    force(2*i)=0;
end
min(extension);
max(extension);
time=toc;

end
