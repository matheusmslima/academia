void main(List<String> args) {
  final nome = 'Matheus Lima';

  var subStringNome = nome.substring(7);
  print(subStringNome);

  var subStringNome2 = nome.substring(0,7);
  print(subStringNome2);

  var sexo = 'Masculino';
  var sexoSigla = sexo.substring(0);
  print(sexoSigla);
  if(sexoSigla == 'M'){
    print('Olá seu sexo é Masculino');
  }

  if(sexo.startsWith('M')){
    print('Olá seu sexo é Masculino');
  }

  if(sexo.toLowerCase().startsWith('m')){
    print('Olá seu sexo é Masculino minusculo');
  }  
  if(sexo.toUpperCase().startsWith('m')){
    print('Olá seu sexo é Masculino minusculo');
  }  

  if(nome.toLowerCase().contains('lima')){
    print('É da família Lima.');
  }  

  // Interpolacao

  var primeiroNome = 'Matheus';
  var ultimoNome = 'Lima';

  var saudacao = 'Ola ' + primeiroNome + ultimoNome + 'Seja muito bem vindo';
  print(saudacao);

  var saudacao2 = 'Ola $primeiroNome $ultimoNome seja muito bem vindo';
  print(saudacao2);

  print('Ola ${primeiroNome.toLowerCase()}');

  print('A soma de 2 + 2 e ${2 + 2}');

  print('Ola $primeiroNome');

  var paciente = 'Matheus Lima|26|Junior Flutter Developer|RS';
  var dadosPaciente = paciente.split('|');
  print(dadosPaciente);
  print(dadosPaciente[0]);
  print(dadosPaciente[1]);
  print(dadosPaciente[2]);
  print(dadosPaciente[3]);

  for (var dado in dadosPaciente) {
    print(dado);
  }
  
  dadosPaciente.forEach(print); //somente passando a funcao funciona

  var pacientes = 
  [
    'Matheus dos Santos Lima|26|Junior Flutter Developer|RS',
    'Carolina dos Santos Stein|27|Doutoranda|RS',
    'Marcelo dos Santos Lima|22|Gamer Profissional|RS',
    'Kauan dos Santos Lima|15|Gamer Profissional|RS'
  ];

  for (var paciente in pacientes) {
    var dadosPaciente = paciente.split('|');
    var nomeCompleto = dadosPaciente[0];
    var nomes = nomeCompleto.split(' ');
    print(nomes.last);
    //print(dadosPaciente[0]);
  }

}