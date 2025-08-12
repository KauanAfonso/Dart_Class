import 'dart:io';

void main(){
  print("Qual o valor da compra? ");
  double price = double.parse(stdin.readLineSync()!);

  print("Qual será o desconto? em porcentagem ex: 10 ");
  int discount = int.parse(stdin.readLineSync()!);

  print("Valor com desconto é de ${calculateDiscount(price, discount)} reais");

}

double calculateDiscount(double price, int discount){
 return price - ((price * discount)/ 100);
}

