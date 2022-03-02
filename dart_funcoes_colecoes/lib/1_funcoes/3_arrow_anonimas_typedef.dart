void main() {
  // Funcoes Arrow - OK
  // Funcoes Anonimas - OK
  // Typedef

  var nome = '';
  var idade = 1;
  var funcaoQualquer = () {
    print('Funcao da variavel');
  };

  print(nome.runtimeType);
  print(idade.runtimeType);
  print(funcaoQualquer.runtimeType);

  print(funcaoQualquer());

  () {
    print('Funcao anonima');
  }();

  print(somaInteiros(10, 10));

  print('\nIniciando chamada');
  chamarUmaFuncaoDeUmParametro((nome) {
    if (nome.isEmpty) {
      print('Nome vazio');
    } else {
      print(nome);
    }
  });
  print('Finalizando chamada\n');

  //funcx2((nome, nomeCompleto, {qq, x, x2}) => null);
}

// 3 partes
// 1 tipo de retorno
// 2 Nome
// 3 parametros (normais, nomeados e opcionais)
// int somaInteiros(int numero1, int numero2){
//   return numero1 + numero2;
// }
int somaInteiros(int numero1, int numero2) => numero1 + numero2;
void somaInteirosVoid(int numero1, int numero2) => numero1 + numero2;

void chamarUmaFuncaoDeUmParametro(Function(String nome) funcaoQueRecebeONome) {
  var calculo = 1 + 1;
  var nomeCompleto = 'Matheus Lima';

  print('Finalizando a funcao chamarUmaFuncaoDeUmParametro');
  print('Invocando funcaoQueRecebeONome');
  funcaoQueRecebeONome(nomeCompleto);
}

void chamarUmaFuncaoDeUmParametro2(FuncaoQueRecebeNome funcaoQueRecebeONome) {
  var calculo = 1 + 1;
  var nomeCompleto = 'Matheus Lima';

  print('Finalizando a funcao chamarUmaFuncaoDeUmParametro');
  print('Invocando funcaoQueRecebeONome');
  funcaoQueRecebeONome(nomeCompleto);
}
//! HORRIVEL
void funcx(
  String Function(
  String nome,
  String nomeCompleto, {
  required String? x,
  required String? x2,
  int? qq,
}) nome) {

}
//? MELHOR
void funcx2(FuncaoQueRecebeNomeComplexo nome) {}

typedef FuncaoQueRecebeNome = void Function(String nome);
typedef FuncaoQueRecebeNomeComplexo = String Function(
  String nome,
  String nomeCompleto, {
  required String? x,
  required String? x2,
  int? qq,
});
