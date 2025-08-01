
import 'dart:io';
void main(){


/*
O usuário deverá dar o input do seu salario
e o programa retornar a media. Porém se ele
digitar -1 o programa deverá finalizar
*/

double total = 0;
bool isRight = true;
String ?current_salary;
double converted_salary;

for(int i = 1; i <= 3; i++) {

  print("Digite seu salário do $i° mês : ");
  current_salary = stdin.readLineSync();
  converted_salary = double.parse(current_salary!);

  if(converted_salary < 0){
    print("Você inseriu errado fim da linha");
    isRight = false;
    break;
  }

  total+=converted_salary;

}

if(isRight){
  double media = total /3;

  if(media >= 0 && media<= 500){
    print("Cuidado com as contas");
  }else if(media > 500 && media <=1000){
    print("Tente investir");
  }else if(media > 1000 && media <= 2000){
    print("Salario ok");
  }else{
    print("Você tem uma boa média de salario !");
  }
}

}