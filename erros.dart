import 'dart:io';

void main(){
  stdout.write('digite seu nome champion : ');
  String? nome = stdin.readLineSync();

  //perguntar novamente até o dado não estiver vazio ou nulo
  while(nome == null || nome.trim().isEmpty){ //trim ignora os espaços
    print('Existem dados vazios ou nulo, tente novamente');
    nome = stdin.readLineSync();
  }

  print('Logado com sucesso');
}