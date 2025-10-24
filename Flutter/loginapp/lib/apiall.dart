import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiAll extends StatefulWidget {
  const ApiAll({super.key});

  @override
  State<ApiAll> createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiAll> {

  List<dynamic>? value; //lista que armazena os valores recebidos

  @override
  void initState(){ //essa função auxilia resetar o estado da pagina toda vez que entrar nela
  super.initState(); //super => sempre roar essa função
  getvalue();
  }


  void getvalue() async{
    final response = await http.get(Uri.parse("https://dummyjson.com/products"));

    if(response.statusCode == 200){ //se o status da requisição for OK
      final data = jsonDecode(response.body); //json decode transoforma as propriedaas json de dados

      setState(() {
        value = data["products"];
      });
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: value == null ? CircularProgressIndicator(): 
        Center(
          //listview é a rolagem de tela, builder vai consturir algo
          child: ListView.builder(itemCount: value!.length, //ItemCoutn é a quantidade de items que a serem recebidas
          itemBuilder: (context, index){
             final item = value![index];

             return Container(
              width: 150,
              height: 150,
              color: Colors.amber,
              child: Center(
                    child: Text("${item["title"]}"),
              ),
             );
          },
          )
        )
      ),
    );
  }
}