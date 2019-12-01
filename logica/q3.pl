/**
a) ?-{Result}/(setof(Actss,Film^Role^actress(Film,Actss,Role),Result)).

b) ?-{Result}/(setof((Atr1,Atr2),Film1^Film2^Atr1^Atr2^Role1^Role2^Role3^Role4^((actor(Film1, Atr1, Role1) ; actress(Film1, Atr1, Role1)),(actor(Film1, Atr2, Role2) ; actress(Film1, Atr2, Role2)),(actor(Film2, Atr1, Role3) ;actress(Film2, Atr1, Role3)),(actor(Film2, Atr2, Role4) ; actress(Film2, Atr2, Role4)), not(Atr1 = Atr2),not(Film1 = Film2)), Result)).

c) ?-{Result}/(findall(Atr, (movie(Film,Year),(actor(Film,Atr,_); actress(Film,Atr,_)), 0 =:= mod(Year, 2)), Actors), sort(Actors, Result)).
*/