%This is the proving of why sCasp is broken

%Forward Reasoning
%?- append([1,2],[3,4],X).
%[1,2,3,4]

%Backwards 
%?- append(A,[3,4],[1,2,3,4]).

%Mixed
%?- append([1,X],B,[1,2,3,4]).

%append([],X,X).
%append([X|Xs],Y,[X|Zs]):-append(Xs,Y,Zs).
