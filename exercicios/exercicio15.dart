import 'dart:io';


class Payload{
  void processar(){
    print("Processar");
  }
}

class Pix extends Payload{
  @override
  void processar(){
    print("Processar - PIX");
  }
}

class CreditCar extends Payload{
  @override
  void processar(){
    print("Processar - Cartão de crédito");
  }
}


class Ticket extends Payload{
  @override
  void processar(){
    print("Processar - Boleto");
  }
}


void main(){
  Pix pix = Pix(); 
  Ticket ticket = Ticket();

  pix.processar();
  ticket.processar();
}