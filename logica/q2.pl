%SeEntao
entao(X,Y) :-
    X,\+ Y -> false;
    true.
/** entao(X,Y) equivale a operação Se p, então q.(p -> q) */


%a) Premissas
amor(deus).
cego(amor).
cego(steve_wonder).
deus(?).
/**
a)
  amor(x) == x é amor
  cego(x) == x é cego
  deus(x) == x é deus
  
  (1) amor(x) = proposição
  (2) cego(x) = proposição
#----------------------------#
  Se:
  amor(deus) ^ cego(amor) ^ cego(steve_wonder)
  Então:
  deus(steve_wonder)
  
  Entretanto, isto é não é uma tautologia, portanto este argumento é uma falácia.
  
  Provando pela contrapositiva(~q -> ~p):
  entao(\+deus(steve_wonder), \+ (amor(deus);cego(amor);cego(steve_wonder)))
*/

%b) Premissas
dieta(pessoa).
comeVed(pessoa).
comeVed(elefante).
comePxe(pessoa).
comePxe(baleia).
gordo(elefante).
gordo(baleia).

/**
b)
  Para todas pessoas p, p faz dieta.
  Para toda dieta d, d recomenda o consumo de veduras e peixe.
  Para todo elefante el, el consome verduras e para toda baleia bl, bl consome peixe.
  el e bl são gordos.
  Logo, d engorda.
  
  dieta(x) -> x faz dieta.
  comeVed(x) -> x consome verduras.
  comePxe(x) -> x consome peixe.
  gordo(x) -> x é gordo.
  - dieta(x) -> gordo(x) se x faz dieta, então engorda.
  
  Para todo x, dieta(x);
  Para todo el, comeVed(el);
  Para todo bl, comePxe(bl);
  gordo(el) ^ gordo(bl);
  - dieta(x) -> gordo(x).
  
  (1) dieta(x) = proposição
  (2) comeVed(x) = proposição
  (3) comePxe(x) = proposição
  (4) gordo(x) = proposição
  (5) comeVed(x) ^ comePxe(x) = conjunção em (2) e (3)
  (6) gordo(x) ^ comeVed(x) ^ comePxe(x) = conjunção (4) e (5)
  
  Se:
  gordo(elefante) ^ gordo(baleia) ^ comeVed(elefante) ^ comePxe(baleia) ^ comeVed(pessoa) ^ comePxe(pessoa)
  Então:
  dieta(pessoa) -> gordo(pessoa)
  
  Entretanto, isto é não é uma tautologia, portanto este argumento é uma falácia.
  
  Provando pela contrapositiva(~q -> ~p):
  entao(\+gordo(pessoa), \+ (gordo(elefante); gordo(baleia); comeVed(elefante); comePxe(baleia); comeVed(pessoa); comePxe(pessoa)))
*/
