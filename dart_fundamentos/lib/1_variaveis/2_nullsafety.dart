// VARIAVEIS DE NIVEL SUPERIOR NAO PODEM SER INICIALIZADAS DEPOIS

// DEVE SER DESSA FORMA
String nomeCompletoSuperior = 'Matheus'; 

// ISSO NAO EH PERMITIDO EVITAR
String? nomeCompletoSuperiorOpc; 

void main() {
  String nomeCompleto;
  String? nomeCompletoOpc;
  int a;
  double b;

  // VARIAVEL LOCAL PODE SER PROMOVIDA PARA NAO NULA (non-null), ISTO EH
  // PODEM SER INICIALIZADAS SEM ATRIBUICAO E POSTERIORMENTE SER ATRIBUIDO UM VALOR

  nomeCompleto = 'Matheus dos Santos Lima';
  nomeCompletoOpc = '';
  print(nomeCompleto.length);
  print(nomeCompletoOpc.length);

  // VARIAVEL DE NIVEL SUPERIOR NAO PODEM SER PROMOVIDA PARA NAO NULO, ISTO EH
  // DEVEM SEMPRE SER INICIALIZADAS COM UMA ATRIBUICAO

  nomeCompletoSuperiorOpc = '';
  //print(nomeCompletoSuperiorOpc.length);
}
