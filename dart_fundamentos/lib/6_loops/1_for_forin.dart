void main(List<String> args) {
  var numeros = List.generate(10, (index) => index);
  var nomes = ['Matheus', 'Rafael', 'Renan', 'Kauan', 'Marcelo'];


  print('Imprimindo numeros com for convencional');
  for(var i = 0; i < numeros.length; i++){
    print(numeros[i]);
  }

  print('Imprimindo numeros com for convencional');
  for(var i = 0; i < nomes.length; i++){
    print(nomes[i]);
  }

  print('Imprimindo numero com for-in');
  for(var numero in numeros){
    print(numero);
  }

  print('Imprimindo nomes com for-in');
  for(var nome in nomes){
    print(nome);
  }

  print('Imprimindo nomes com for convencional e break');
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
    if (nomes[i] == 'Kauan') {
      break;
    }
  }

  print('Imprimindo nomes com for-in e break');
  for (var nome in nomes) {
    print(nome);
    if (nome == 'Renan') {
      break;
    }
  }


  print('Imprimindo nomes com for convencional e continue');
  for (var i = 0; i < nomes.length; i++) {
    if (i == 1 || i == 3) {
      continue;
    }
    print(nomes[i]);
  }
  
  var listaInts = [1, 2, 3];
  var listaStrings = [
    '#0',
    for(var i in listaInts) '#$i' // Collection for
  ];
  print(listaStrings);
}