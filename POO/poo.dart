import 'dart:io';
import 'Cachorro.dart';
void main(){

    //criar nosso objeto
    Humano Kauan = Humano("azul",'kauan', 18, "topete" );
    Humano Joazin = Humano("preto",'joao', 22, "blindado" );

    Cachorro Spike = Cachorro("Spike Sebastião da Silva");

    print("${Kauan.cor_olho} , ${Kauan.nome}, ${Kauan.idade}, ${Kauan.cabelo}");


}

//sempre com a primeira letra maiuscula
class Humano{
    String cor_olho = "";
    String nome = "";
    int idade = 0;
    String cabelo = "";

    //Construtor
    Humano(this.cor_olho, this.nome, this.idade, this.cabelo);
}