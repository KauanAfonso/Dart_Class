import 'package:flutter/material.dart';

void main() {
  runApp(const Contador());
}

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {

  //codar em dart aqui!
  int _numero = 0;

  void aumentar(){
    setState(() { //função que atualiza o valor da variavel
      _numero++; 
    });
  }

  void diminuir(){
    setState(() {
      if(_numero > 0){
          _numero--;
      }
    });
  }

  void resetar(){
    setState(() {
      _numero = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //quem fornece os componentes

      home: Scaffold( //divide a tela entre appbar e body
        appBar: AppBar(title: Text(
          'Contador do Vini', 
          style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        centerTitle: true, //centralizando titulo
        backgroundColor: const Color.fromARGB(255, 22, 179, 2),
        toolbarHeight: 100,
        
        ),
        body: Column( //elmentos um abaixo do outro
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ //varios filhos
          Image.network('https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRqWo_7NcMK1bJx8ykzK7VJAgN5H5kHBesmRelSkdSz8Bhiti1usxAzAnLYZ_zW4fI9zMySNCLocE7Jrn0ehPjmCzHZqx3yEZ0rPOgKLjrNLg',
          width:250),
          Text("${_numero}", style: TextStyle(fontSize: 150),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(40),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  ),
                onPressed: (){
                  aumentar();
                  },child: Icon(Icons.add)
                ),
              SizedBox(width: 20,),
              
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(40),
                  backgroundColor: const Color.fromARGB(255, 230, 10, 10),
                  foregroundColor: Colors.white,
                  ),
                onPressed: (){diminuir();}, child: Icon(Icons.remove)),
              SizedBox(width: 20,),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(40),
                  backgroundColor: const Color.fromARGB(255, 243, 222, 33),
                  foregroundColor: Colors.white,
                  ),
                onPressed: (){resetar();}, child: Icon(Icons.restore)),
            ],
          )
        ],
        ),
      ),

    );
  }
}