void main() {
  print('Iniciou o processo.');
  m2();
  p2();
  var i = 0;
  while(i < 5){
    print(i);
    i++;
  }
  m2();
  print('Finalizou');
}

void m2(){
  print('funcao 2');
}

void p2(){
  Future.delayed(Duration(seconds: 5), (){
    print('Processo 2 sendo executado.');
  });
  
}