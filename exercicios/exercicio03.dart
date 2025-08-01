import 'dart:io';

void main(){

bool isPunished = true;
print("Digite o nome do infrator: ");
String ? infractor_name = stdin.readLineSync();

print("Digite a velocidade que o motorista estava: ");
double velocidade = double.parse(stdin.readLineSync()!);

double total_to_pay = 0;
double final_total;

if(velocidade <= 60){
  print("Sem infração");
  isPunished = false;
}else if(velocidade >= 61 && velocidade <= 80){
  print("Infração leve");
  total_to_pay = 100;
}else if(velocidade >= 81 && velocidade <= 100){
  total_to_pay = 200;
  print("Infração média");
}else{
  total_to_pay = 300;
  print('infração grave');
}


if(isPunished){

  print('Bem vindo ao menu...');
  print('1- Pagar pix (10% de desconto)');
  print('2 - Pagar parcelar (2x) sem juros ');
  print("3 - Para parcelar (3x) com 10% de juros");

  print("Digite a sua forma de pagamento: ");
  String? opcao = stdin.readLineSync();


  switch(opcao){
    case '1':
      final_total = total_to_pay - (total_to_pay * 0.10);
      print("Sua multa seria de $total_to_pay reais e $final_total reais com 10% de desconto");
    case '2':
      print("Sua multa será  de $total_to_pay reais e com duas parcelas de ${total_to_pay / 2}");
    case '3':
      final_total = total_to_pay + (total_to_pay * 0.10);
      print("Sua multa será  de $final_total reais e com três parcelas de ${final_total / 3}");
    default:
      print('Você inseriu uma opção errada!');
}

}else{
  print("Sem multa !");
}



}