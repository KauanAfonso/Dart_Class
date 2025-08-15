import 'dart:io';

void main(){
  bool condition = false;
  bool condition2 = false;
  double total_price = 0;
  do{
    try{
        print("informe o valor da comprar: ");
        total_price = double.parse(stdin.readLineSync()!);

        while(total_price < 0.0){
            print("------Erro na entrada do valor!\n Digite novamente: ");
            total_price = double.parse(stdin.readLineSync()!);
        }

        condition = true;
        showMsg(total_price);
        double answer = double.parse(stdin.readLineSync()!);

        while(answer < 1 || answer > 4){
          print("opção inválida");
          showMsg(total_price);
          answer = double.parse(stdin.readLineSync()!);

        }
        condition2 = true;

      }on FormatException{
          print("-------O número deve ser um número !");
      }catch(e){
        print("Algum erro ai hein : $e");
      }



  }while(!condition || !condition2);

  print('obrigado !');

}



void showMsg(price){
  print("$price reais. Qual será a forma de pagamento: ");
  print("1- Dinheiro");
  print("2- Cartão de Débito");
  print("3-Cartão de Crédito");
  print("4- Pix");
}