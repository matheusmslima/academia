void main() {
  //* Referencia de chave e valor key:value
  final paciente = <String, String>{
    'nome': 'Matheus',
    'curso': 'Academia do Flutter',
  };

  //* Mapa pode ser nulo porem a chave e valor devem ser nao nulos
  Map<String, String>? pacienteNullSafety = null;

  //* Mapa não pode ser nulo nem o valor pode ser nulo somente a chave
  Map<String?, String> pacienteNullSafety2 = {
    null: 'Rodrigo',
  };

  //* Mapa não pode ser nulo nem a chave porem o valor pode
  Map<String, String?> pacienteNullSafety3 = {
    'nome': null,
  };

  //* Mapa não pode ser nulo nem o valor pode ser nulo somente a chave
  var pacienteNullSafety4 = <String?, String>{
    null: 'Rodrigo',
  };

  //* Mapa não pode ser nulo nem a chave porem o valor pode
  var pacienteNullSafety5 = <String, String?>{
    'nome': null,
  };

  print(paciente);
  print(pacienteNullSafety);
  print(pacienteNullSafety2);
  print(pacienteNullSafety3);
  print(pacienteNullSafety4);
  print(pacienteNullSafety5);

  var produtos = <String, String>{};

  //* Só será adicionado se a chave não existir
  produtos.putIfAbsent('nome', () => 'Chocolate');
  produtos.putIfAbsent('nome', () => 'Cerveja');
  print(produtos);

  produtos.update('nome', (value) => 'Cerveja');
  print(produtos);
  produtos.update('preco', (value) => '10', ifAbsent: () => '10');

  //* Recuperando o valor;
  print('Produto ${produtos['nome']}');
  print('Preco ${produtos['preco']}');

  //* Não suporta async
  produtos.forEach((key, value) {
    print('Chave: $key: $value');
  });

  //* Fazer algum processo async dentro
  for (var entry in produtos.entries) {
    print('Chave: ${entry.key}: ${entry.value}');
  }

  for (var key in produtos.keys) {
    print('Chave: $key');
  }

  for (var value in produtos.values) {
    print('Valor: $value');
  }

  var novoMapaProdutos = produtos.map((key, value) {
    return MapEntry(key + '_nova', value.toUpperCase());
  });

  print(novoMapaProdutos);

  var mapa = <String, Object>{
    'nome': 'Matheus Lima',
    'cursos': [
      {
        'nome': 'Academia do Flutter',
        'descricao': 'Melhor curso de Flutter do Brasil'
      },
      {
        'nome': 'Arquiteto Flutter',
        'descricao': 'Melhor curso de Flutter do Brasil'
      }
    ]
  };
  print(mapa['cursos']);
}
