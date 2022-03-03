// Publico public
// Privado private no dart basta por o _
// na frente da variavel
// Protegido protected

// Caracteristicas
// Comportamentos

class Camiseta {
  // Atributos de instancias de classe
  String? tamanho;
  String? _cor;
  String? marca;

  // Atributos de classe
  // const impede que seja alterada
  // a caracteristica da classe

  // The const keyword is used when the
  // value of the variable is known at compile-time and never changes.
  static const String nome = 'Camiseta';
  static const String _nome2 = 'Camiseta';

  // Métodos de classe
  static String recuperarNome() => nome;
  static String _recuperar2Nome() => _nome2;

  String? get cor => _cor;
  set cor(String? cor) {
    _Camiseta2();
    if (cor == 'Verde') {
      throw Exception('Não pode ser verde');
    }
  }

  // Funcoes dentro de classes
  // São chamados de métodos
  String tipoDeLavagem() {
    if (marca == 'Nike') {
      return 'Não pode lavar na máquina';
    } else {
      return 'Pode lavar na máquina';
    }
  }

  String _tipoDeLavagem2() {
    if (marca == 'Nike') {
      return 'Não pode lavar na máquina';
    } else {
      return 'Pode lavar na máquina';
    }
  }
}

class _Camiseta2 {
  void recuperarCor() {
    var camiseta = Camiseta();
    camiseta._cor = 'Verde';
  }
}
