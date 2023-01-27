digito(0).
digito(1).
digito(2).
digito(3).
digito(4).
digito(5).
digito(6).
digito(7).
digito(8).
digito(9).

diferente([]).
diferente([H|T]):-
        not(member(H,T)),
        diferente(T).

solucion(L):-
        digito(S),S>0,digito(E),digito(N),digito(D),
        digito(M),M>0,digito(O),digito(R),digito(Y),
        1000*S+100*E+10*N+D+1000*M+100*O+10*R+E =:= 10000*M+1000*O+100*N+10*E+Y,
        L=[S,E,N,D,M,O,R,Y],
        diferente(L).
