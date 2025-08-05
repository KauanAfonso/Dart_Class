import 'dart:io';


void main(){
  String continuar = '';

  do{
    print('bem vindo ao mercado do vini. Campeao seja bem vindo');
    print("1 - comprar carne");
    print("2- Comprar feijão");
    print('3- Comprar Arroz');

    print("Deseja continuar comprando no melhor mercado de monte mor");
    continuar = stdin.readLineSync()!;
  }while(continuar == "sim");


}