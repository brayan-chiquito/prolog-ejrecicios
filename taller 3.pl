hombre(tomas).
hombre(jose).
hombre(jaime).
mujer(ana).
mujer(isabel).
mujer(patricia).
mujer(clara).
progenitor_de(clara,jose).
progenitor_de(tomas,jose).
progenitor_de(tomas,isabel).
progenitor_de(jose,ana).
progenitor_de(jose,patricia).
progenitor_de(patricia,jaime).
dif(X,Y):-X\=Y.
desendencia_de(X,Y,N):-N==1,!,progenitor_de(X,Y).
desendencia_de(X,Y,N):-progenitor_de(X,Z),N1 is N + 1,desendencia_de(Z,Y,N1).
asendencia_de(X,Y,N):-N==1,!,progenitor_de(X,Y).
asendencia_de(X,Y,N):-progenitor_de(Z,Y),N1 is N - 1,asendencia_de(X,Z,N1).
tios_de(X,Y):-asendencia_de(Z,Y,2),progenitor_de(Z,X).
es_madre(X):-mujer(X),progenitor_de(X,Y),write(Y).
es_padre(X):-hombre(X),progenitor_de(X,Y),write(Y).
es_hijo(X):-progenitor_de(Y,X),write(Y).
hermana_de(X,Y):-mujer(X),progenitor_de(Z,X),progenitor_de(A,Y),Z==A.
abuelo_de(X,Y):-hombre(X),asendencia_de(Z,Y,2),hombre(Z),!.
abuela_de(X,Y):-mujer(X),asendencia_de(Z,Y,2),mujer(Z),!.
hermanos(X,Y):-dif(X,Y),progenitor_de(Z,X),progenitor_de(A,Y),A==Z.
tia(X,Y):-mujer(X),asendencia_de(Z,Y,2),progenitor_de(Z,X),mujer(X),!.
