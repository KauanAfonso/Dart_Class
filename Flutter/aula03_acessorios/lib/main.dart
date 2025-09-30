import 'package:aula03_acessorios/tela2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaHome(),

    );
  }
}

class TelaHome extends StatelessWidget {
  const TelaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(//prove os componentes para a minha tela

      theme: ThemeData( 
        textTheme: GoogleFonts.aclonicaTextTheme(),
      ),
      debugShowCheckedModeBanner: false, //tirar a fita debug
      home: Scaffold(//separa a tela entre appbar e body
        appBar: AppBar(title: Text("Tela Assests")), //barra superior 
        body: Center( //ajuda a centralizar
          child: Column( // elementos um abaixo do outro
              children: [ //varios filhos
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqRcQH4JIuXXAcg8EDCq42WBYpv_EQiwAKrA&s"),
                Image.asset('assets/images/imagem.jfif', width: 200,),
                Text("Teste de fonte"),
                // Text("Esse é o texto com a fonte baixada", style: TextStyle(fontFamily: "kauan"),),
                // Text("Esse é o texto com biblioteca", style: GoogleFonts.aboreto(),),
                Text("Esse é o texto com a fonte baixada",),
                Text("Esse é o texto com biblioteca"),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Tela2()));
                }, child: Icon(Icons.play_arrow_sharp ))
              ],
          ),
        ) ,

      ),
    );
  }
}