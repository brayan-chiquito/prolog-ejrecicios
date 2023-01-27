es_enemigo_de(eeuu,corea_del_sur).
vende_armas_a(coronel_west,corea_del_sur).
es_de_eeuu(coronel_west,eeuu).

es_criminal(X,Y):-es_enemigo_de(Y,Z),vende_armas_a(X,Z),es_de_eeuu(X,Y).
