void main(){
  // OPERADORES LOGICOS
  // && (AND) (E)
  // || (OR ) (OU)
  // !  (NOT) (NAO)

  final sexo = 'M';
  final idade = 18;
  final nome = 'Matheus';

  if (sexo == 'M' && idade >= 18) {
    print('Pode');
  } else {
    print('Nao pode');
  }


  if (sexo == 'M' || idade >= 18) {
    print('Pode');
  } else {
    print('Nao pode');
  }


  // TRUE && FALSE
  if(!(sexo == 'M' && idade >= 18)){
    print('Pode');
  } else {
    print('Nao pode');
  }

  // NAO EH MAIOR QUE 18
  if(!(idade >= 18)){

  }

  if (!(nome == 'Matheus')) {
    
  }

  // if (sexo == 'M'){
  //   if (idade >= 18){
  //     print('Pode');
  //   } else {
  //     print('Nao pode');
  //   }
  // } else {
  //   print('Pode');
  // }
}