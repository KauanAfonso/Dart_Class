import 'dart:io';

class Veiculo {
  String modelo;
  String marca;
  int ano;

  Veiculo({required this.modelo, required this.marca, required this.ano});
}


class Carro extends Veiculo{
  int ? qtd_portas;
  Carro({required String modelo, required String marca, required int ano, this.qtd_portas}):super(modelo: modelo, marca: marca, ano: ano);
}

class Moto extends Veiculo{
  bool? bau;

  Moto({required String modelo, required String marca, required int ano, this.bau}):super(modelo:modelo, ano:ano, marca: marca);
}

void main() {
  Carro camaro = Carro(modelo: "Camaro", marca: "Chevrolet", ano: 2024, qtd_portas: 3);
  Moto motoKauan =Moto(modelo: "twister", marca: "honda", ano: 2018, bau: false);   
}