import 'dart:io';


void main(){
  print("Qual o valor da compra: ");
  double price = double.parse(stdin.readLineSync()!);
  print('Digite as parcelas: ');
  int quantity = int.parse(stdin.readLineSync()!);
  double single_installment = price / quantity;

  if(quantity <= 0){
    print("Pagou no pix ${price} ");
  }else{
    for (int i = 1; i <= quantity; i++) {
      print("Parcela numero $i: R\$ ${single_installment} ");
    }
  }

}