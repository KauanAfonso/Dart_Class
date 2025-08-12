import 'dart:io';

void main(){
  print("Digite a temperatura em Celsius: ex: 22 ");
  double temp = double.parse(stdin.readLineSync()!);

  convertToFahrenheit(temp);

}

void convertToFahrenheit(double temp){
  double Fahrenheit = (temp / 5) * 9 + 32;
  print("$temp ° C é $Fahrenheit ° F");
}

