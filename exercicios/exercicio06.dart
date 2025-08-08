import 'dart:io';

void main(){
  List<String> names = ["Kauan", "Bruno", "VINI", "luis", "Pedro", "Cris"];
  int qtd_presence = 0;
  String ? ask_to_person;
  
  names.forEach((String name){
    print("$name irá a festa?");
    ask_to_person = stdin.readLineSync();
    if(ask_to_person == "sim" || ask_to_person == "Sim"){
      qtd_presence++;
    }
  });

  print("$qtd_presence pessoas irão a festa !");
}