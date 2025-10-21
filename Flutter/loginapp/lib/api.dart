import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiPage extends StatefulWidget {
  const ApiPage({super.key});

  @override
  State<ApiPage> createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {

  String? value; //variavel que armazenar o valor

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
        value = data[0]["title"];
      });
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: value == null ? CircularProgressIndicator(): Text("$value"),
      ),
    );
  }
}