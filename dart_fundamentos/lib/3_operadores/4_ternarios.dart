void main() {
  final idade = 12;

  if(idade >= 18){
    print('Maior');
  } else {
    print('Menor');
  }


  // (CONDICAO) ? FACA ALGO : OUTR COISA
  final eMaiorIdade = idade >= 18 ? true : false;

  print('eh maior de idade?' + eMaiorIdade.toString());




  print((idade < 13) ? 'Crianca' : (idade > 12 && idade <18) ? 'Adolescente' : 'Adulto');


  final ano = 2024;

  // CUIDAR A COMPLEXIDADE DE TERNARIOS
  print((ano % 4 == 0 || ano % 400 == 0 || ano % 100 == 0) ? 'bisexto' : 'nao eh bisexto');
}