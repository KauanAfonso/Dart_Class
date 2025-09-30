
import 'package:aula03_acessorios/main.dart';
import 'package:flutter/material.dart';

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Kauan - tela 02"),),
          body: 
              ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget> [   
                        Image.network('https://i.redd.it/0mk6x6v3fzz71.jpg', width: 300,),
                        Image.network('https://i.redd.it/0mk6x6v3fzz71.jpg', width: 300,),
                        Image.network('https://i.redd.it/0mk6x6v3fzz71.jpg', width: 300,),
                        Image.network('https://i.redd.it/0mk6x6v3fzz71.jpg', width: 300,),
                        Image.network('https://i.redd.it/0mk6x6v3fzz71.jpg', width: 300,),
                        Image.network('https://i.redd.it/0mk6x6v3fzz71.jpg', width: 300,),
                        Image.network('https://i.redd.it/0mk6x6v3fzz71.jpg', width: 300,),
                        Image.network('https://i.redd.it/0mk6x6v3fzz71.jpg', width: 300,),
                        Image.network('https://i.redd.it/0mk6x6v3fzz71.jpg', width: 300,),
                        Image.network('https://i.redd.it/0mk6x6v3fzz71.jpg', width: 300,),
                    ],
                  ),
                ),
              // Row(
              //   children: [
              //       Text("Ferrari F40"),
              //       Text("Ferrari SF90")
              //   ],
              // ),
              // Text("Oi sou a tela 02"),
              // ElevatedButton(onPressed: ()=>{
              //   Navigator.push(context, MaterialPageRoute(builder:(context)=>TelaHome())),
              // }, child: Icon(Icons.play_arrow))
          );
  }
}