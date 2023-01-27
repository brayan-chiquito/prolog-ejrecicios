conexion(vancouver,[[edmonton,16],[calgary,13]]).
conexion(edmonton,[[saskatoon,12]]).
conexion(calgary,[[edmonton,4],[regina,14]]).
conexion(saskatoon,[[calgary,9],[winnipeg,20]]).
conexion(regina,[[saskatoon,7],[winnipeg,4]]).

esta_en_lista(Elemento,Lista):-
	Lista=[Elemento|_].

esta_en_lista(Elemento,Lista):-
	Lista=[_|Cola],
    esta_en_lista(Elemento,Cola).

hay_conexion(Origen,Destino,Costo):-
    conexion(Origen,Lista),
    esta_en_lista([Destino,Costo],Lista).
viaje(Origen,Destino,Costo):-hay_conexion(Origen,Destino,Costo).
viaje(Origen,Destino,Costo):-not(Destino==Z),hay_conexion(Origen,Z,Costo1),viaje(Z,Destino,Costo2),Costo is Costo1 + Costo2,!.
