es_padre_de(abraham,herbert).
es_padre_de(abraham,homero).
es_padre_de(mona,herbert).
es_padre_de(mona,homero).
es_padre_de(clancy,marge).
es_padre_de(clancy,patty).
es_padre_de(clancy,selma).
es_padre_de(jacqueline,marge).
es_padre_de(jacqueline,patty).
es_padre_de(jacqueline,selma).
es_padre_de(homero,bart).
es_padre_de(homero,lisa).
es_padre_de(homero,maggie).
es_padre_de(marge,bart).
es_padre_de(marge,lisa).
es_padre_de(marge,maggie).
es_padre_de(selma,ling).
es_abuelo_de(X,Y):-es_padre_de(X,Z),es_padre_de(Z,Y).
es_hermano(X,Y):-es_padre_de(Z,X),es_padre_de(Z,Y).
es_sobrino(X,Y):-es_hermano(Y,Z),es_padre_de(Z,X).
es_tio(X,Y):-es_sobrino(Y,X).
son_primos(X,Y):-es_hermano(Z,J),es_padre_de(Z,Y),es_padre_de(J,X).















