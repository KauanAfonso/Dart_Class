import 'dart:ffi';
import 'dart:io';

class Animal{

  void falar(){
    print('animal falando');
  }

}

class Cachorro extends Animal{

  @override
  void falar(){
    print('Cachorro falando');
  }
}


class Papaguaio extends Animal{

  @override
  void falar(){
    print('Papaguaio falando');
  }
}


class Gato extends Animal{

  @override
  void falar(){
    print('Gato falando');
  }
}


void main(){
  Animal animal = Animal();
  Cachorro cachorro = Cachorro();
  Papaguaio papaguaio = Papaguaio();
  Gato gato = Gato();

  List<Animal>listAnimals =[animal,cachorro,papaguaio,gato];

  listAnimals.forEach((Animal item)=>item.falar());

}