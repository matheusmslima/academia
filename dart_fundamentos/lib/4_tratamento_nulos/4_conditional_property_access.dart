String? nomeCompleto;

void main(List<String> args) {

  // Conditional Property Access
  print(nomeCompleto?.toUpperCase() ?? 'Nome não preenchido');

  // 2°
  // Null Aware operator
  // var nomeCompletoLocal = nomeCompleto ?? 'Nome não preenchido';
  // print(nomeCompletoLocal.toUpperCase());

  // 1°
  // if else convencional
  // if (nomeCompletoLocal != null) {
  //   print(nomeCompletoLocal.toUpperCase());
  // } else {
  //   print('Nome não preenchido');
  // }
}