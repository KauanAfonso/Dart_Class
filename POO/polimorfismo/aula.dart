import 'dart:io';


class Animal {
    String nome;//não preciso inicializar
    String raca; 
    int idade;

    Animal({required this.nome, required this.raca, required this.idade});


    void fazerSom(String nome){
      print("");
    }
}

class Cachorro extends Animal {
    Cachorro({required String nome, required String raca, required int idade})
    :super(nome: nome, raca: raca, idade: idade);
    
    @override
    void fazerSom(String nome){
      print("$nome, seu chorro faz Auau");
    }

}

class Gato extends Animal {
    Gato({required String nome, required String raca, required int idade})
    :super(nome: nome, raca: raca, idade: idade);

    @override
    void fazerSom(String nome){
        print("Miau Miau");
    }

}

void main(){
    Cachorro Spike = Cachorro(nome: "Spike", raca:"Beagle", idade: 5 );
    Spike.fazerSom("Spike");
    Gato GarfieldMarry = Gato(idade: 10, raca: "Laranja", nome: "Garasdasd...");
    GarfieldMarry.fazerSom("garfield");

}
