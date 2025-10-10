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
    return MaterialApp(home: TelaHome());
  }
}

class TelaHome extends StatelessWidget {
  const TelaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //prove os componentes para a minha tela
      theme: ThemeData(textTheme: GoogleFonts.aclonicaTextTheme()),
      debugShowCheckedModeBanner: false, //tirar a fita debug
      home: Scaffold(
        //separa a tela entre appbar e body
        appBar: AppBar(
          toolbarHeight: 100,
          centerTitle: true,
          title: 
            Text("Kauan Afonso", style: GoogleFonts.licorice(textStyle: TextStyle(fontSize: 50), color: Colors.white,) ),  
          backgroundColor: Color(0xFF131515),
        ), //barra superior
        backgroundColor: Color(0xFF1A1A1A),
        body:
         DefaultTextStyle(style: TextStyle(color: Colors.white), child: 
         Center(
          //ajuda a centralizar
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end, // empurra o conteúdo para baixo
            crossAxisAlignment: CrossAxisAlignment.center,
            // elementos um abaixo do outro
            children: [
              //varios filhos
              Text("Backend", style: GoogleFonts.bebasNeue(textStyle: TextStyle(fontSize: 100), fontWeight: FontWeight.bold), ),
              Text("Developer", style: GoogleFonts.bebasNeue(textStyle: TextStyle(fontSize: 160), fontWeight: FontWeight.bold ), ),             
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tela2()),
                  );
                },
                child: Icon(Icons.play_arrow_sharp),
              ),

            SizedBox(height: 50,),
            
            Container(
              width: 600,
              height: 600,
              decoration: BoxDecoration(
                color: Color.from(alpha: 0.82, red: 1, green: 1, blue: 1), // cor de fundo
                borderRadius: BorderRadius.circular(20), // bordas arredondadas
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/kauan.png',
                  fit: BoxFit.cover,
                ),
              ),
            )


            ],
          ),
        ),
         ),
      ),
    );
  }
}
