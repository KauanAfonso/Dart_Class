
import 'package:aula03_acessorios/main.dart';
import 'package:flutter/material.dart';
import 'package:aula03_acessorios/tela2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
 import 'package:url_launcher/url_launcher.dart';


class Tela2 extends StatefulWidget {
  const Tela2({super.key});

  @override
  State<Tela2> createState() => _Tela2State();
}

class _Tela2State extends State<Tela2> {

  String descricao = "";

  void descricaoFlutter(){
    //mudar o status da var
    setState(() {
      descricao = "Tenho 45 anos de experiencia no flutter";
    });
  }


  List<List<String>> myProjects = [
    ["Pokedex", "Projeto consumindo api da pokeapi desenvolvido no senai", "https://github.com/KauanAfonso/Pokedex_v2", "assets/images/pokeapi.png"],
    ["Rick and Morty API", "Projeto consumindo a API do rick and morty", "https://github.com/KauanAfonso/Rick-and-mory-API.git",  "assets/images/rickMorty.png"],
    ["MapRoom",  "Projeto integrador do 2 Semestre", "https://github.com/KauanAfonso/Map_Room.git","assets/images/maproom.png"],
    ["Landing Page", "Projeto landinpage para estudo","https://github.com/KauanAfonso/Landing_Page","assets/images/landingpage.png" ]
  ];

  Future<void> _launchURLBrowser(String urlString) async {
      final Uri url = Uri.parse(urlString);
      if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
        throw 'Could not launch $urlString';
      }
    }

  int currentIndex = 0;


  void nextProject(){
    setState(() {
      currentIndex = (currentIndex + 1 ) % myProjects.length;
    });
  }


  @override
  Widget build(BuildContext context) {

    //Pegando os dados do projeto atual
    String projetcName = myProjects[currentIndex][0];
    String projectDescription = myProjects[currentIndex][1];
    String projectLink = myProjects[currentIndex][2];
    String projecImage = myProjects[currentIndex][3];

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
            // mainAxisAlignment: MainAxisAlignment.center, // centraliza verticalmente
            children: [
              SizedBox(height: 25,),
              Text("Projetos", style: GoogleFonts.bebasNeue(textStyle: TextStyle(fontSize: 80), fontWeight: FontWeight.bold),),
              SizedBox(height: 25,),
              Center(
                child: Container(
                width:500,
                height: 400,
                padding: EdgeInsets.all(25),
                child: Column(
                  children: [
                  Image.asset(projecImage, width: 600),
                    Column(
                      children: [
                            Text("Nome: $projetcName"),
                            Text("Descrição: $projectDescription"),
                            
                            GestureDetector(
                              onTap: (){
                                _launchURLBrowser("$projectLink");
                              }
                              ,
                              child:Text("Link: Clique aqui"),

                            )
                      ],
                    )
                  ],
                ),
              ),
              ),
              ElevatedButton(onPressed: (){
                nextProject();
              }, child: Text("Proximo Projeto")),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaHome()),
                  );
                },
                child: const Icon(Icons.arrow_back),
              )
                          ],
          )

      ),
          );
  }
}
