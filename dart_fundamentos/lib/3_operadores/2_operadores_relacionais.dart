void main(){
  // OPERADORES RELACIONAIS
  // 6 TIPOS
  // == (IGUALDADE), != (DIFERENCA), > (MAIOR QUE), < (MENOR QUE), <= (MENOR OU IGUAL), >= (MAIOR OU IGUAL)

  final idade = 18;
  final tipoPet = 'Gato';
  // REGRA DE NEGOCIO PARA TIRAR HABILITACAO
  if (idade == 18){
    print('pode tirar cnh');
  }
  
  if (idade > 17){
    print('pode tirar cnh');
  }

  if (idade >= 18){
    print('pode tirar cnh');
  }

  if(tipoPet != 'Cachorro'){
    print('somente coisas para cachorro');
  }

  
  
}