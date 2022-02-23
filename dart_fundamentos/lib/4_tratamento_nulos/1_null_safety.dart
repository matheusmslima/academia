
String? nomeSuperior;
void main(List<String> args) {
  String nome = '';
  String? nomeNula;

  if(nomeNula != null){
    nomeNula.isEmpty;

  }

  nome.isEmpty;

  var nomeLocal = nomeSuperior; // TROCANDO PARA VAR LOCAL FUNCIONA
  if (nomeLocal != null) { 
    nomeLocal.isEmpty; // NAO FUNCIONA VAR SUPERIOR NAO PODE SER PROMOVIDA
  }

  nomeSuperior = '';
  nomeSuperior!.isEmpty;
}