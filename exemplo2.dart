import 'dart:io';
void main(){

  print("Digite sua idade atual: ");
  String? entrada = stdin.readLineSync();
  int idade = int.parse(entrada!); //a idade só converterá se houver dados.
  int idade_proximo_ano = idade + 1;

  print("Sua idade atual é de $idade e no proximo ano é $idade_proximo_ano");

}