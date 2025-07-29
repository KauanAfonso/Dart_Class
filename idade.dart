import 'dart:io';
void main(){

  print("Digite sua idade campeão: ");
  String? entrada = stdin.readLineSync();
  int idade = int.parse(entrada!); //a idade só converterá se houver dados.

  if(idade >= 18){
    print("Você pode dirigir");
  }else{
    print("Você deve beber toddynho e get uber");
  }
}