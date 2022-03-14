import 'dart:convert';

class Cidade {
  String id;
  String idUf;
  String nome;

  Cidade({
    required this.id,
    required this.idUf,
    required this.nome,
  });

  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(
      id: map['id'],
      idUf: map['id'].substring(0, 2),
      nome: map['nome'],
    );
  }

  factory Cidade.fromJson(String source) => Cidade.fromMap(jsonDecode(source));

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'id_uf': idUf,
      'nome': nome,
    };
  }

  String toJson() => jsonEncode(toMap());

  @override
  String toString() => 'Cidade(id: $id, idUf: $idUf, nome: $nome)';
}
