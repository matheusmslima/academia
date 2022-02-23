void main(List<String> args) {
  final numeros = [1, 2, 3, 4];

  // FIRST IN FIRST OUT
  // ADICIONA PRO FINAL DA LISTA
  print(numeros);
  numeros.add(1);
  print(numeros);

  // lista indexada comecando em 0
  final nomes = ['Matheus', 'Carol', 'Julia', 'Marcelo', 'Kauan'];
  print(nomes);

  // metodo add
  nomes.add('Luana');
  print(nomes);
  print(nomes[3]);
  print(nomes[4]);
  print('Insetindo Teste no indice 2');

  // metodo addAll
  // adiciona mais de um item ao final da lista
  nomes.addAll(['Matheus 2', 'Marcelo 2']);
  print(nomes);

  // metodo insert
  // passou julia pra frente e inseriu Teste
  nomes.insert(2, 'Teste');
  print(nomes);
  print(nomes[2]);

  // metodo insertAll
  nomes.insertAll(3, ['Matheus 3', 'Marcelo 3']);
  print(nomes);

  // metodo remove
  nomes.remove('Matheus 3');
  print(nomes);

  // metodo removeWhere
  // precisa de uma funcao que retorna um booleano
  // consigo determinar uma condicao especifica para remover

  // aqui embaixo removi todos os nomes Matheus
  nomes.removeWhere((nome) => nome[0] == 'Matheus');
  print(nomes);

  // aqui embaixo removi todos os nomes que comecam com M
  nomes.removeWhere((nome) => nome[0] == 'M');
  print(nomes);

  // exemplo mais didatico removendo nome julia
  nomes.removeWhere(
    (nome) {
      print('Nome procurado: $nome');
      if (nome == 'Julia') {
        return true;
      } else {
        return false;
      }
    },
  );
  print(nomes);

  // print(nomes[0]); TROCAR POR
  print(nomes.first);

  // metodo length retorna o tamanho da lista
  print(nomes.length);

  // print(nomes[nomes.length - 1]); TROCAR POR
  print(nomes.last);

  // print(nomes[8]);

  // tudo que tem Where precisa de uma funcao
  // metodo firstWhere
  print('\nBuscando primeiro nome:\n');
  var primeiroNome = nomes.firstWhere((nome) => nome == 'Teste');
  print(primeiroNome);

  // de maneira mais didatica
  print('\nBuscando primeiro nome:\n');
  var primeiroNome2 = nomes.firstWhere(
    (nome) {
      print(nome);
      if (nome == 'Luana') {
        return true;
      } else {
        return false;
      }
    },
  );
  print(primeiroNome2);

  // numeros de 1 ate 10
  // explicitamente adicionando o 1 no indice
  final numerosGerados = List.generate(10, (index) => index + 1);
  print(numerosGerados);

  // numeros de 0 ate 9 apenas incrementando a partir do 0
  final numerosGerados2 = List.generate(10, (index) => index++);
  print(numerosGerados2);

  // gerar Strings
  final stringsGerados = List.generate(10, (index) => 'Indice: ${index + 1}');
  print(stringsGerados);

  // repeticoes
  final repeticoes = List.filled(10, 'Matheus');
  print(repeticoes);

  // numeros Gerados para Calculo
  // gerando de 1 .. 100
  final numerosGeradosParaCalculo = List.generate(100, (index) => index + 1);

  // metodo fold para fazer calculos, conhecido por reduce em outas linguagens
  // calculando soma de todos os numeros na lista numerosGeradosParaCalculo
  var soma = numerosGeradosParaCalculo.fold<int>(
    // deve ser tipado ou entao ele entende como dynamic
    0,
    (previousValue, numero) => previousValue = previousValue + numero,
  );
  print(soma);

  // Spread operator (...) FAMOSO TRES PONTINHOS QUE TAVA EM DUVIDA
  var listaNumerosSpreadB = [4, 5, 6];

  // Criando uma lista com outra dentro usando o spread
  var listaNumerosSpread = [1, 2, 3, ...listaNumerosSpreadB];
  print(listaNumerosSpread);

  // Collection if
  // nao muito usado, fica poluido
  var promocaoAtiva = true;

  var produtos = [
    'Cerveja',
    'Refrigerante',
    if (promocaoAtiva) 'Suco de Laranja', // Collection if
  ];
  print(produtos);

  // Collection for
  // metodo para adicionar itens usando for
  // em uma lista
  var listaInts = [1, 2, 3];
  var listaStrings = [
    '#0',
    for(var i in listaInts) '#$i' // Collection for
  ];
  print(listaStrings);

  // TODO: PRATICAR FAZENDO ALGUNS EXEMPLOS COM OS METODOS DE LISTAS
  // listaStrings.
  var string1 = listaStrings.join(' -> ');
  print(string1);
}
