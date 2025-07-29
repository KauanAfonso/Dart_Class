//importa biblioteca com as funções da linguagem
import 'dart:io';

void main(){ //função principal para o codio, sem ela não funcionada

//precisa ter para o programa não ter loop infinito
print("Digite seu nome: ");
String? nome = stdin.readLineSync(); // o '?' indica que a variavel pode ser nula
String nomeFormat = nome!.toLowerCase();
print('Olá campeão seu nome é $nome');

if(nomeFormat=='junin'){
    print("Você é o cara");
}else if(nome == "Marquin"){
    print("Qual foi marquin?");
}
else{
    print("Saia daqui por favor, você não é o cara ! ");
}


}