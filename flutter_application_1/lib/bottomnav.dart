import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bott extends StatefulWidget {
  const Bott({super.key});

  @override
  State<Bott> createState() => _BottState();
}

class _BottState extends State<Bott> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyTask"),
        centerTitle: true,
      ),
      body: Center(child:
          Column(children: [
            Row(
children: [
  Container(
height: 150,
width:150,
color: Colors.blue,
  ),
  Container(
height: 150,
width:150,
color: Color.fromARGB(255, 243, 110, 33),
  ),
],
            ),
            Row(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  color: Color.fromARGB(255, 68, 243, 33),
                ),
              Container(
                height: 150,
                width: 150,
                color: Color.fromARGB(255, 243, 33, 198),
              ),
              ],
            ),
          ],)
      ),
    );
  }
}