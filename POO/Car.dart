import "dart:io";

class Carro{
    int rodas = 0;
    String cor = "";
    String placa = "";
    String marca = "";
    String modelo = "";
    int velocidade = 0;

    //Construtor
    Carro(this.rodas, this.cor, this.placa, this.marca, this.modelo, this.velocidade);

    //metodo
    void acelerar(){
        velocidade+=10;
    }
} 


void main(){
    Carro Mustang = Carro(4, "Azul", "AJA800", "Ford", "Mustang Manual", 170);
    Carro Ferrari = Carro(4, "Vermelha", "AC777", "Ferrari", "458", 0);
    print("Velocidade antes de acelerar ${Mustang.velocidade}");
    print("Velocidade antes de acelerar ${Ferrari.velocidade}");

    Mustang.acelerar();
    Ferrari.acelerar();

    print("Velocidade depois de acelerar ${Mustang.velocidade}");
    print("Velocidade depois de acelerar ${Ferrari.velocidade}");


}