void main() {
  List<int> numeros = [1, 2, 3];
  numeros.add(2);

  final caixa = Caixa<Bola>();
  caixa.adicionar(Bola());
  Bola? itemCaixa = caixa.getItems();

  print(caixa.alturaItem());

  final caixaBoneca = Caixa<Boneca>();
  caixaBoneca.adicionar(Boneca());
  caixaBoneca.getItems();
  Boneca? itemBoneca = caixaBoneca.getItems();

  print(caixaBoneca.alturaItem());

  // final caixaComputador = Caixa<Computador>();
}

class Caixa<I extends Item> {
  I? _item;

  void adicionar(I item) {
    _item = item;
  }

  I? getItems() {
    return _item;
  }

  double alturaItem() {
    return _item?.altura() ?? 0;
  }
}

abstract class Item {
  double altura();
}

class Bola extends Item {
  @override
  double altura() {
    return 20.0;
  }
}

class Boneca extends Item {
  @override
  double altura() {
    return 55.0;
  }
}

class Telefone extends Item {
  @override
  double altura() {
    return 15.0;
  }
}
