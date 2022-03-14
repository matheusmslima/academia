import 'dart:convert';

class Estado {
  int id;
  String uf;
  String nome;
  //Regiao regiao;

  Estado({
    required this.id,
    required this.uf,
    required this.nome,
    //required this.regiao,
  });

  factory Estado.fromMap(Map<String, dynamic> map) {
    return Estado(
      id: map['id'] ?? 0,
      uf: map['sigla'] ?? '',
      nome: map['nome'] ?? '',
      //regiao: map['regiao'] ?? '',
    );
  }

  factory Estado.fromJson(String source) => Estado.fromMap(jsonDecode(source));

  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'sigla': uf,
      'nome': nome,
    };
  }

  String toJson() => jsonEncode(toMap());

  @override
  String toString() => 'Estado(id: $id, sigla: $uf, nome: $nome)';
}