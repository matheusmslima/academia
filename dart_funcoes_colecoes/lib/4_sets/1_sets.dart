void main() {
  var numerosLista = <int?>[];
  numerosLista.add(9);
  numerosLista.add(1);
  numerosLista.add(4);
  numerosLista.add(2);
  numerosLista.add(null);
  numerosLista.add(5);
  numerosLista.add(1);
  numerosLista.add(7);
  print(numerosLista);

  //! set não permite valores duplicados dentro da lista
  var numerosSet = <int?>{};
  numerosSet.add(9);
  numerosSet.add(1);
  numerosSet.add(4);
  numerosSet.add(2);
  numerosSet.add(null);
  numerosSet.add(5);
  numerosSet.add(1);
  numerosSet.add(7);
  print(numerosSet);

  print('\n.toSet()');
  //! toSet() torna a lista um set sem valores repetidos
  print(numerosLista.toSet());

  numerosSet.forEach(print);

  var numeros1 = {1, 2, 3, 4, 5, 6};
  var numeros2 = {1, 3, 4, 7};

  print('\n.difference()');
  print(numeros1.difference(numeros2));
  print(numeros2.difference(numeros1));

  print('\n.union');
  print(numeros1.union(numeros2));

  print('\n.intersection()');
  print(numeros1.intersection(numeros2));

  var nomes1 = {'Matheus', 'Marcelo', 'Kauan'};
  var nomes2 = {'Matheus', 'Rafael', 'Renan'};
  print(nomes1.intersection(nomes2));

  print('\n.lookup');
  print(nomes1.lookup('Matheus'));

  nomes2.elementAt(0);
}
