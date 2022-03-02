void main() {
  var lista = ['Matheus'];
  print(lista.hashCode);
  print(lista);
  funcao(lista);
  print(lista);

  String nome = 'Matheus Lima';
  print(nome);
  funcao2(nome);
  print(nome);

  var novaLista = ['Matheus'];
  print(novaLista);
  addNew(novaLista);
  print(novaLista);

  var listaProdutos = ['Prod'];
  print(listaProdutos);
  var valor = calculaCarrinho(listaProdutos);
  print(valor);
  print(listaProdutos);
}

int calculaCarrinho(List<String> produtos){
  produtos.clear();
  return 10;
}

void funcao2(String nome) {
  nome += 'Academia do Flutter';
}

void funcao(List<String> nomes) {
  print(nomes.hashCode);
  nomes.add('Lima');

  if (nomes.isNotEmpty) {
    nomes.clear();
  }
}

List<String> addNew(List<String> nomes) {
  var novoNomes = [...nomes];
  novoNomes.add('Matheus Lima');
  print(novoNomes);
  return novoNomes;
}
