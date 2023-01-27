entre(N1,N2,N1):-N1=<N2.
entre(N1,N2,X):-
    N1 < N2,
    N3 is N1+1,
    entre(N3,N2,X).

factorialinverso(X,N):-
    factorialinverso1_a(X,1,N).
factorialinverso1_a(X,A,A):-
    factorial(A,X).
factorialinverso1_a(X,A,N):-
    factorial(A,N1),
    N1 < X,
    A1 is A+1,
    factorialinverso1_a(X,A1,N).
factorial(1,1).
factorial(N,X):-
    N > 1,
    N1 is N-1,
    factorial(N1,X1),
    X is X1 * N.
factorialinverso2(X,N):-
    factorialinverso2_a(X,1,N).
factorialinverso2_a(X,A,A):-
    factorialmemo(A,X).
factorialinverso2_a(X,A,N):-
    factorialmemo(A,N1),
    N1 < X,
    C1 is A+1,
    factorialinverso2_a(X,C1,N).
:-dynamic factorialmemo/2.
factorialmemo(1,1).
factorialmemo(N1,X1):-
    N > 1,
    N1 is N-1,
    factorialmemo(N1,X1),
    X is X1 * N,
    asserta(factorialmemo(N,X):-!).
factorialinverso3(X,N):-
    factorialinverso3_a(X,1,1,N).
factorialinverso3_a(X,A,F,A):-
    A*F =:= X.
factorialinverso3_a(X,A,F,N):-
    F1 is A*F,
    F1 < X, !,
    A1 is A+1,
    factorialinverso3_a(X,A1,F1,N).
sumatoria(0,0).
sumatoria(X,R):- N1 is X-1,sumatoria(N1,R1),R is X + R1,!.
potencia(A,0,1):- A =\= 0.
potencia(X,Y,R):- Y>0,
    Y1 is Y-1,
    potencia(X,Y1,R1),R is X * R1,!.
