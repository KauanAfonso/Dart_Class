import "dart:io";

void main(){

  String isContinuing = "";
  String choose = '';
  String cpf = '';
  List<String> shop_cart = [];
  double total_price = 0;
  double final_total;
  double price_product;


  print("Digite seu cpf: ");
  cpf = stdin.readLineSync()!;
  do{
      print('Bem vindo ao mercadinho de Kauan');
      print("1- Frango");
      print("2- Arroz");
      print("3- Banana");

      print("Qual será o produto?  ");
      choose = stdin.readLineSync()!;

      print("Digite o preço do produto:");
      price_product = double.parse(stdin.readLineSync()!);

      switch(choose){
      case "1" :
        shop_cart.add("Frango");
        break;
      case "2":
        shop_cart.add("Arroz");
        break;
      case "3":
        shop_cart.add("Banana");
        break;
      default:
        print("Nenhum produto escolhido");
        price_product = 0;
      }

      total_price += price_product;

      print("Deseja continuar? s/n");
      isContinuing = stdin.readLineSync()!;

  }while(isContinuing == "s");


  print("Seus produtos são: $shop_cart");
  print("O valor total é de R\$ $total_price");

  do{
      print('Qual a forma de pagamento');
      print("1- Pix");
      print("2- Parcelado");
      print("3- Fiado");


      print("Qual será a forma de pagamento?  ");
      choose = stdin.readLineSync()!;

      switch(choose){
        case '1':
          final_total = total_price - (total_price * 0.10);
          print("Total: $final_total reais valor com 10% de desconto");
        case '2':
          final_total = total_price + (total_price * 0.10);
          print("Total: $final_total reais e valor com 10% de juros");
        case '3':
          final_total = total_price + (total_price * 0.15);
          print("Total: $final_total reais e com 15 % de juros para pagar na proxima compra");
        default:
          print('Você inseriu uma opção errada!');
      }
  }while(choose != "1" && choose != "2" && choose != "3");


}
