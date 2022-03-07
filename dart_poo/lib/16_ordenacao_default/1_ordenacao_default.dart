import 'cliente.dart';

void main(){
  var c1 = Cliente(nome: 'Matheus', telefone: '123123');
  var c2 = Cliente(nome: 'Marcelo', telefone: '123123');
  var c3 = Cliente(nome: 'Kauan', telefone: '123123');
  var c4 = Cliente(nome: 'Dodo', telefone: '123123');

  var lista =[c1, c2, c3, c4];
  print(lista);
  lista.sort();
  print(lista);


}