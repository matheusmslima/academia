void main() {
  var nomeCompleto = 'Matheus';
  print(nomeCompleto);
  nomeCompleto = 'Matheus dos Santos Lima';

  print(nomeCompleto);

  // final
  // immutable (sempre utilizar)
  // fica pronta no momento de execucao
  // VARIAVEIS FINAIS NAO PODEM SER ALTERADAS DEPOIS DE INICIALIZADAS (immutable)
  // SAO DEFINIDAS EM TEMPO DE EXECUCAO (Runtime)
  final nomeCompletoFinal = 'Matheus dos Santos Lima';

  // const
  // tem que estar pronta no momento da compilcao
  // NAO PODEM SER ALTERADAS DEPOIS DE INICIALIZADAS (immutable)
  // NAO PODEM RECEBER VALORES DE OUTRAS VARIAVEIS A MENOS QUE SEJAM
  // CONST TBM
  // SAO DEFINIDAS NO TEMPO DE COMPILACAO
  const nomeCompletoConst = 'Matheus dos Santos Lima';
}
