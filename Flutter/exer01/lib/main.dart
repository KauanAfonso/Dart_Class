import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(239, 43, 215, 228),
        appBar: AppBar(title: Text("Flutter Containers", style: TextStyle(fontSize: 40,)),centerTitle: true, ),

        body: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfQtkF6lxgKMAKozmzgJoOhx5jSBm2I01KNA&s'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(35)),
                  child: Center(child:Text('1', style: TextStyle(fontSize: 35, color: Colors.white),
                    ),) 
                ),

                SizedBox(
                  width: 20,
                ),

                Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(35)),
                  child: Center(child:Text('2', style: TextStyle(fontSize: 35, color: Colors.white),
                    ),) 
                )
              ],
            ),

            SizedBox(
              height: 20,
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(35)),
                  child: Center(child:Text('3', style: TextStyle(fontSize: 35, color: Colors.white),
                    ),) 
                ),
                
                SizedBox(
                  width: 20,
                ),

                Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(35)),
                  child: Center(child:Text('4', style: TextStyle(fontSize: 35, color: Colors.white),
                    ),) 
                )
              ],
            ),
          ],                 
        ),
      ),
    );
  }
}