import 'dart:ffi';
import 'dart:io';

void main(){

double nota1 = 7;
double nota2 = 9;
double nota3 = 6;
double nota4 = 2;
double nota5 = 5;

double media = (nota1 + nota2 + nota3 + nota4 + nota5) / 5;
print("Sua média foi de $media");

if(media >= 5){
  print("Aprovado");
}else if(media < 4){
  print("Reprovado");
}else{
  print("Recuperação");
}

}