void main(List<String> args) {
  //                 ? -> Nullable    (aceita nulo)
  // sem nada (padrao) -> non-nulable (nao aceita)

  // Nao aceita nulo
  // Lista normal de Strings
  var nomes = <String>[];

  // a Lista pode ser nula
  // mas os itens internos dela devem ser String
  // posso nao ter uma lista 

  List<String>? listaNula = null;
  
  // nomes internos nao aceita nulos
  List<String> nomesInternosNaoAceitaNulos = [];
  var nomesInternosNaoAceitaNulos1 = ['Matheus']; // POSSO OMITIR O TIPO, QUANDO DECLARADO
  
  // a Lista nao pode ser nula
  // mas os itens internos dela podem ser nulos
  List<String?> nomesInternosNulos = [null, null, '1', null];
  var nomesInternosNulos1 = <String?>[null, null, '1', null]; // posso declarar o tipo antes da lista tbm

  // Tanto a lista quanto os elementos internos dela
  // podem ser nulos
  // null e tambem ['1', null, '1', null]
  List<String?>? nomesInternosEListaNulos = [null, null, null];
  List<String?>? nomesInternosEListaNulos1 = null;


}