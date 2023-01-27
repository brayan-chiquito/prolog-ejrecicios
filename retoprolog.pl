p([],[]).
p(L,[X|P]):-select(X,L,R),p(R,P).

ok([_]).
ok(P):-P=[X|L],X=f(_,S1),L=[f(S2,_)|_],S1==S2, ok(L).

dom(L):-p(L,P),ok(P),write(P),nl.
dom(_):-write('no hay cadena'),nl.

