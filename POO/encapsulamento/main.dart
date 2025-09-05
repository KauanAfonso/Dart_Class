import 'dart:io';
import 'carro.dart';

void main(){
  Carro uptesla = Carro(modelo: "Upstela nao agra todo mundo");

  uptesla.alterar_velocidade = 85;
  print(uptesla.mostrar_velocidade);
}