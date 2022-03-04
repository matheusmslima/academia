import 'package:dart_poo/10_mixins/joao.dart';

void main(){
  // João é um Artista
  // João é um Cantar
  // João é um Dançar
  
  var joao = Joao();
  
  print('''
    João:
      Habilidade: ${joao.habilidade()}
      Cantar: ${joao.cantar()}
      Dançar: ${joao.dancar()}
''');
}