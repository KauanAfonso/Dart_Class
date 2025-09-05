import 'dart:io';

class Carro {
  String modelo;
  int _velocidade = 0; //atributto privado precisa de _ "undeline" , antes do nome da variavel 
  
  Carro({required this.modelo});

  //Função Get -> para ver o valor do atribuito
  int get mostrar_velocidade{
    return _velocidade;
  }

  // funcao Set -> para alterar o valor com validação
  set alterar_velocidade(int y){
    if(y < 0){
      print('A velocidade não pode ser menor que zero');
      return;
    }

    _velocidade = y;
  }

}