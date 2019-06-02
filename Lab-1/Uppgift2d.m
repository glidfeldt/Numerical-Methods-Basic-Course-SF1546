clear all;
clc
format
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                   Gauss     TidLU     TidSparse    TidSparseLU%
%                  _____    ____    _______    ___________%
%                                                               %
%     Torn ett     0.97353    0.2675    0.34995      0.026584   %
%     Torn två      5.1161    1.0789    0.90192      0.076343   %
%     Torn tre      20.166    2.8839     1.8883       0.15631   %
%     Torn fyra     672.31    54.477     17.784        2.3131   %
%                                                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


Gauss=zeros(4,1);
TidLU=zeros(4,1);
TidSparse=zeros(4,1);
TidSparseLU=zeros(4,1);



load eiffel1.mat
Gauss(1)=solveTime(A,xnod);
TidLU(1)=solveTimeLU(A,xnod);
TidSparse(1)=solveTime(sparse(A),xnod);
TidSparseLU(1)=solveTimeLU(sparse(A),xnod);
disp('Torn ett klart')

load eiffel2.mat
Gauss(2)=solveTime(A,xnod);
TidLU(2)=solveTimeLU(A,xnod);
TidSparse(2)=solveTime(sparse(A),xnod);
TidSparseLU(2)=solveTimeLU(sparse(A),xnod);
disp('Torn två klart')

load eiffel3.mat
Gauss(3)=solveTime(A,xnod);
TidLU(3)=solveTimeLU(A,xnod);
TidSparse(3)=solveTime(sparse(A),xnod);
TidSparseLU(3)=solveTimeLU(sparse(A),xnod);
disp('Torn tre klart')

load eiffel4.mat
Gauss(4)=solveTime(A,xnod);
TidLU(4)=solveTimeLU(A,xnod);
TidSparse(4)=solveTime(sparse(A),xnod);
TidSparseLU(4)=solveTimeLU(sparse(A),xnod);
disp('Torn fyra klart')

Torn={'Torn ett', 'Torn två','Torn tre','Torn fyra'};

tabell=table(Gauss,TidLU,TidSparse,TidSparseLU,'Rownames',Torn)
%disp('Noll indikerar att tidtagning inte körts');

%2d
%Med LU-faktorisering delar man först upp en kvadratiskt matris
%Med uppåt triangulär matris. Då man delar upp matrisen 