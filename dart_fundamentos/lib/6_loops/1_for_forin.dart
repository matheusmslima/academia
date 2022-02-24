void main(List<String> args) {
  var numeros = List.generate(10, (index) => index);
<<<<<<< HEAD
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
=======
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
>>>>>>> 690f7e8e89786a156f4d9fe807560293be124163
    print(numero);
  }

  print('Imprimindo nomes com for-in');
<<<<<<< HEAD
  for (var nome in nomes) {
    print(nome);
  }

  // for convencional e break
  print('Imprimindo nomes usando for convencional e break');
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
    if (nomes[i] == 'Marcelo') {
=======
  for(var nome in nomes){
    print(nome);
  }

  print('Imprimindo nomes com for convencional e break');
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
    if (nomes[i] == 'Kauan') {
>>>>>>> 690f7e8e89786a156f4d9fe807560293be124163
      break;
    }
  }

<<<<<<< HEAD
  // for-in e break
  print('Imprimindo nomes com for-in e break');
  for (var nome in nomes) {
    print(nome);
    if (nome == 'Rafael') {
=======
  print('Imprimindo nomes com for-in e break');
  for (var nome in nomes) {
    print(nome);
    if (nome == 'Renan') {
>>>>>>> 690f7e8e89786a156f4d9fe807560293be124163
      break;
    }
  }

<<<<<<< HEAD
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
=======

  print('Imprimindo nomes com for convencional e continue');
  for (var i = 0; i < nomes.length; i++) {
    if (i == 1 || i == 3) {
>>>>>>> 690f7e8e89786a156f4d9fe807560293be124163
      continue;
    }
    print(nomes[i]);
  }
<<<<<<< HEAD

  // recaptulando o for-in utilizado na lista
  // com o collection for
  var listaInts = [1, 2, 3];
  var listaStrings = [
    '#0',
    for (var i in listaInts) '#$i' // Collection for
  ];
  print(listaStrings);
}
=======
  
  var listaInts = [1, 2, 3];
  var listaStrings = [
    '#0',
    for(var i in listaInts) '#$i' // Collection for
  ];
  print(listaStrings);
}
>>>>>>> 690f7e8e89786a156f4d9fe807560293be124163
