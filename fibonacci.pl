fibona(0,0).
fibona(1,1).
fibona(N,Res):-N>1,
    X is N-1,Y is N-2,
    fibona(X,A),fibona(Y,B),
    Res is A + B.
