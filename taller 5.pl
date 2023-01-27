palindrome(L):-
    reverse(L,L).

permuta([],[]).
permuta(L1,[X|L2]):-
    select(X,L1,L3),
    permuta(L3,L2).

lista_num(N,N,[N]).
lista_num(N,M,[N|L]):-
    N<M,
    N1 is N+1,
    lista_num(N1,M,L).
