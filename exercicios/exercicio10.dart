import 'dart:io';

void main(){
  
  print('Digite seu nome completo: ');
  String ? name = stdin.readLineSync();

  while(name == null || name.trim().isEmpty ){
    print('Digite corretamente');
    name = stdin.readLineSync();
  }

  print('Agora sim');


}