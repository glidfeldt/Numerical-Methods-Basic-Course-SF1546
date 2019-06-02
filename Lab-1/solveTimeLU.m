function [ time ] = solveTimeLU( A,xnod)
%Tid för lösning med LU
%   Detailed explanation goes here
extension=zeros(length(xnod),1);
force=zeros(length(xnod)*2,1);

tic
[L,U]=lu(A);

for i=1:length(xnod)
    force(2*i)=-1;
    temp=L\force;
    solution=U\temp;
    extension(i)=norm([solution(2*i), solution(2*i-1);]);
    force(2*i)=0;
end
time=toc;
end
