import 'dart:ffi';
import 'dart:io';

class Veiculo {
  String modelo;
  String cor;
  String marca;

  Veiculo({required this.modelo, required this.cor, required this.marca});

  void mover(bool cnh){
    if(cnh){
      print('movendo veiculo');
    }else{
      print("voce não tem cnh");
    }
  }

  String toString(){
    return "$modelo, $cor, $marca";
  }
}


class Carro extends Veiculo{
  Carro({required String modelo, required String cor, required String marca}):super(cor:cor, modelo:modelo, marca:marca);

  @override
  void mover(bool cnh){
    if(cnh){
      print('movendo veiculo');
      print('essa classe é um carro');
    }else{
      print("voce não tem cnh");
    }
  }
}


class Moto extends Veiculo{
  Moto({required String modelo, required String cor, required String marca}):super(cor:cor, modelo:modelo, marca:marca);

  @override
  void mover(bool cnh){
    if(cnh){
      print('movendo veiculo');
      print('essa classe é um Moto');
    }else{
      print("voce não tem cnh");
    }
  }
}

void main(){
  Carro Bugatti = Carro(modelo: "Veyron", cor: "Azul", marca: "Buggati/Volks");
  Bugatti.mover(true);
  Moto honda = Moto(modelo: "Honert", cor: 'preto', marca: 'honda');
  honda.mover(false);

  print(Bugatti);
}