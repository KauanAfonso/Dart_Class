import 'dart:io';

void main(){
  print('Bem vindo ao menu...');
  print('1- Para comprar arroz');
  print('2 - para comprar feijão');
  print("3 - Para comprar carne");
  print("Digite a sua opção campeão: ");

  print("Digite sua opção:");
  int opcao = int.parse(stdin.readLineSync()!);

  switch(opcao){
    case 1:
      print("Arroz adicionado na sua sacola");
      break;

    case 2:
      print('Feijao adicionado');
      break;

    case 3:
      print("Carne adicionada");
      break;

    default:
      print("Opção inválida");
  }

}