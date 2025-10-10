
import 'package:aula03_acessorios/main.dart';
import 'package:flutter/material.dart';
import 'package:aula03_acessorios/tela2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class Tela2 extends StatefulWidget {
  const Tela2({super.key});

  @override
  State<Tela2> createState() => _Tela2State();
}

class _Tela2State extends State<Tela2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.aclonicaTextTheme()),
      debugShowCheckedModeBanner: false, //tirar a fita debu
      
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          centerTitle: true,
          title: 
            Text("Kauan Afonso", style: GoogleFonts.licorice(textStyle: TextStyle(fontSize: 50), color: Colors.white,) ),  
          backgroundColor: Color(0xFF131515),
        ), //barra superior
          body: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Image.network("https://images.pexels.com/photos/96622/pexels-photo-96622.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                    Text("Projeto"),
                    buton
                  ],
                ),
              )
            ],
          )

      ),
          );
  }
}
