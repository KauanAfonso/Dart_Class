import 'package:flutter/material.dart';

class TelaHome extends StatelessWidget {
  const TelaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  width: 400,
                  height: 600,
                  color: Colors.blue,
                ),
                Container(
                  width: 400,
                  height: 600,
                  color: const Color.fromARGB(255, 156, 134, 6),
                ),
                Container(
                  width: 400,
                  height: 600,
                  color: const Color.fromARGB(255, 24, 167, 24),
                ),
                Container(
                  width: 400,
                  height: 600,
                  color: Colors.blue,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}