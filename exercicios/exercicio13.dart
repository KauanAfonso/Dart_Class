import 'dart:io';

class Account{
  String onwer_name;
  double initial_balance = 0;
  double? investiment;

  Account({required this.onwer_name, required this.initial_balance});

}

class CurrentAccount extends Account{
    double ? special_check_limit;

    CurrentAccount({required String onwer_name, required initial_balance, this.special_check_limit}):super(initial_balance: initial_balance, onwer_name: onwer_name);
}

class SavingAccount extends Account{
    double yield_rate; //porcentagem

    SavingAccount({required String onwer_name, required initial_balance, required this.yield_rate}):super(initial_balance: initial_balance, onwer_name: onwer_name);

    void update_inicial_balance(){
      initial_balance += (initial_balance * yield_rate) / 100;
      print("Valor da sua conta: $initial_balance");
    }
}


void main(){

  SavingAccount myPersonalAccount = SavingAccount(onwer_name: "Kauan", initial_balance: 100.00, yield_rate: 10.00);
  myPersonalAccount.update_inicial_balance();

}
