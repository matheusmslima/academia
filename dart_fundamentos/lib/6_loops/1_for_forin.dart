void main(List<String> args) {
  var numeros = List.generate(10, (index) => index);
  var nomes = ['Matheus', 'Marcelo', 'Rafael', 'Renan', 'Kauan'];

  // for CONVENCIONAL
  print('Imprimindo numeros da lista usando for convencional');
  for (var i = 0; i < numeros.length; i++) {
    print(numeros[i]);
  }

  print('Imprimindo nomes usando for convencional');
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
  }

  // for-in
  print('Imprimindo numeros com for-in');
  for (var numero in numeros) {
    print(numero);
  }

  print('Imprimindo nomes com for-in');
  for (var nome in nomes) {
    print(nome);
  }

  // for convencional e break
  print('Imprimindo nomes usando for convencional e break');
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
    if (nomes[i] == 'Marcelo') {
      break;
    }
  }

  // for-in e break
  print('Imprimindo nomes com for-in e break');
  for (var nome in nomes) {
    print(nome);
    if (nome == 'Rafael') {
      break;
    }
  }

  // for convencional e continue usado para pular algum nome
  // na lista
  print('Imprimindo nomes usando for convencional e continue');
  for (var i = 0; i < nomes.length; i++) {
    if (nomes[i] == 'Marcelo') {
      continue;
    }
    print(nomes[i]);
  }

  // mesmo de cima so que agora com o indice
  print('Imprimindo nomes usando for convencional e continue');
  for (var i = 0; i < nomes.length; i++) {
    // 2 e 3 sao Rafael e Renan na lista respectivamente
    if (i == 2 || i == 3) {
      continue;
    }
    print(nomes[i]);
  }

  // recaptulando o for-in utilizado na lista
  // com o collection for
  var listaInts = [1, 2, 3];
  var listaStrings = [
    '#0',
    for (var i in listaInts) '#$i' // Collection for
  ];
  print(listaStrings);
}
