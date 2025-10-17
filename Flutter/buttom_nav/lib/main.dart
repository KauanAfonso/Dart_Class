import 'package:buttom_nav/home.dart';
import 'package:buttom_nav/tela2.dart';
import 'package:buttom_nav/tela3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavBar(),
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  
  int currentIndex = 0;

  void changeIndex(int index){
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> screens = [
    TelaHome(),
    Tela2(),
    Tela3(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: screens.elementAt(currentIndex),
        bottomNavigationBar: BottomNavigationBar(items:<BottomNavigationBarItem>[
            BottomNavigationBarItem(label: "Tela 1", icon: Icon(Icons.account_circle)),
            BottomNavigationBarItem(label: "Tela 2", icon: Icon(Icons.account_circle)),
            BottomNavigationBarItem(label: "Tela 3", icon: Icon(Icons.account_circle)),
        ],
        currentIndex: currentIndex, //a posicao desejada
        onTap: changeIndex, //funcao que muda o index
        ),
      ),
    );
  }
}