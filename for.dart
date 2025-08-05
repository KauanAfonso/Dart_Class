import 'dart:io';

void main(){
  List<String> frutas = [];
  List<int> numbers = [1,2,5];

  for(int i = 0; i < 3; i ++){
    print('Digite sua fruta predileta campeao');
    String? fruta = stdin.readLineSync();
    frutas.add(fruta!);
  }

  for(String i in frutas){
      print("Fruta: $i");
  }

  //foreEach
  numbers.forEach((int i ){
    i++;
    print(i);
  });

  print(numbers);
}