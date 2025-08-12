import 'dart:io';

void main(){
  print("Qual sua idade? ");
  int age = int.parse(stdin.readLineSync()!);

  bool verification = isGreatherThan18(age);

  if(verification){
    print("Você é maior de idade !");
  }else{
    print("Você não é maior de idade");
  }

  
}

bool isGreatherThan18(int age){
  return age >= 18;
}

