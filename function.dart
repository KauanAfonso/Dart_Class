import 'dart:io';

/*

------funçoes sem parametros e sem retorno:
------Somente mostra como o print -> voce não consegue armazenar o valor dela depois

-------Funções simples com parametros:
-------Ela precisa informações para poder funcionar

-------Funções com retorno sem parámetros
-------Ela não tem parametros mas retorna algo (normalmente quase sempre retorna a mesma coisa)
-------Voce quer manipular o valor mas sem passar nd

-------Funções com retorno e om parametros:
-------Quando ela aprecisa saber as informações e operar usando isso

*/
void main(){

  somente_mostra();
  soma(100,20);

  int valordafuncao = soma_mais();
  int valorFianl = valordafuncao * 2;

  print("Valor final ${valorFianl}");

  print(soma_parametros(15, 10));

}

//Sem parametros e sem retorno
void somente_mostra(){
  print("Monstrando ao restaurante do Vini");
  print("Escolha suas opções de comida: ");
  print("1- Lasanha");
  print("2 - Risoto");
  print("4 - Risoto");
}

//com parametros e sem retorno
void soma(int num1, int num2){
  print(num1 - num2);
}

//função com retorno mais sem parámetro
int soma_mais(){
  int valor = 1 + 2;
  return valor;
}

//com parametro e retorno
int soma_parametros(int num, int num2){
  int valor = num + num2;
  return valor;
}