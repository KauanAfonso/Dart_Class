import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(const Home());
}


class Home extends StatelessWidget { // tela estatica, digite "st" para selecionar o tipo de tela
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //prover os elementos para a sua tela
        home: Scaffold( //separar a tela em 2 partes. Barra e superior e conteudo
              appBar: AppBar(title: Text("Ola bem vindo, champion"), ),

              body: 
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFBEE5B16),
                      borderRadius: BorderRadius.circular(40) 
                    ),
                    child: Text("Olá", style: TextStyle(fontSize: 35, color: Colors.white),
                    textAlign: TextAlign.center,),
                      //formas mais simples: Colors.blue,
                    ),
                    Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: 50,
                    color: Color.fromARGB(250, 22, 238, 137),
                    child: Text("Kauan"),
                    
                      //formas mais simples: Colors.blue,
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          color: Colors.blue,
                        ),
                                                Container(
                          width: 50,
                          height: 50,
                          color: Colors.green,
                        ),
                                                Container(
                          width: 50,
                          height: 50,
                          color: Colors.pink,
                        )
                      ],
                    )

                ],
              ),

        ),
    );
  }
}

