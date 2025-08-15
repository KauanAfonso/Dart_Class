import 'dart:io';

void main(){
  try{
    print('Digite seu número junin: ');
    int numero = int.parse(stdin.readLineSync()!);

  //para formatos diferentes
  }on FormatException{
    print("Digite apenas números");
  }on TypeError{
    print("Conversao de dados inválida");
  }
}