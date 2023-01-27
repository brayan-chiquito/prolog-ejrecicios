pertenece(X,[X|_]).
pertenece(X,[_|L]):- pertenece(X,L),!.
contador([],0).
contador([_|Y],N):-contador(Y,M),N is M+1.


