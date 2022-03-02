void main(List<String> args) {
  final idade = 26;
  print('Sua idade é $idade');
  
  final valor = -20;
  if (valor.isNegative) {
    print(valor);
  }

  final valorDouble = 10.65;
  print(valorDouble.round());
  print(valorDouble.roundToDouble());

  final valorStringCorreto = '30';
  final valorStringErrado = 'Matheus';


  final valorInt = int.parse(valorStringCorreto);
  final valorInt2 = int.tryParse(valorStringErrado);
  print(valorInt);
  print(valorInt2);

  if (valorInt2 != null) {
    print('O valor é ${valorInt2 + 2}');
  }

  final precoCamiseta = 30.27876;
  print(precoCamiseta.toStringAsFixed(2));

  
}