import 'package:flutter/material.dart';
import 'package:loginapp/api.dart';
import 'package:loginapp/apiall.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}



class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();

  String correctUser = "kauan";
  String correctPassword  = "123";

  //variavel para verificar o erro
  String erro = "";

  void login(){
    if(user.text == correctUser && password.text == correctPassword ){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> ApiPage()));
    }else{
      setState(() {
          erro = "Existem credenciais erradas";
      });

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person, size: 150,),
              TextField(
                controller: user,
                decoration: InputDecoration(
                  hintText: "Insira o seu nome",
                  labelText: "nome",
                  suffixIcon: Icon(
                    color: Colors.blue,
                    Icons.check_circle,
                  ),
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),//colocar bordar no textfield
                  labelStyle: TextStyle(
                    color: const Color.fromARGB(255, 0, 71, 129)
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextField(
    
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "insira sua senha",
                  labelText: "password",
                  suffixIcon: Icon(
                    color: Colors.blue,
                    Icons.check_circle,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),//colocar bordar no textfield
                  labelStyle: TextStyle(
                    color: const Color.fromARGB(255, 0, 71, 129)
                  ),
                ),
                ),
                SizedBox(height: 15),
                ElevatedButton(onPressed: login, child:Text("Login"), style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20)
                ) ),
                Text(erro),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ApiAll()),
                    );
                  },
                  child: Text("API ALL"),
                )

            ],
          ),
        ),
    );
  }
}