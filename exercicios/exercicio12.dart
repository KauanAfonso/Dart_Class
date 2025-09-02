import "dart:io";

class Animal{
    String nome;
    int idade;

    Animal({required this.nome, required this.idade});
}

class Cachorro extends Animal{
    String ? raca;

    Cachorro({required String nome, required int idade, this.raca}):super(nome:nome,idade:idade);

    void fazer_som(){
        print("Au Au !");
    }
}


class Gato extends Animal{
    String ? cor;

    Gato({required String nome, required int idade, this.cor}):super(nome:nome,idade:idade);

    void fazer_som(){
        print("Miauu !");
    }
}


void main(){

    Cachorro dog = Cachorro(nome: "toddy", idade: 5);
    dog.fazer_som();

    Gato cat = Gato(nome: "Piu", idade: 6, cor:"azul");

    cat.fazer_som();


}