import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
        
      ),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Container(
            height: 100,width: 80,color: Colors.black,
          ),
          Container(height: 100,width: 80,color: Colors.blue,),

        ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Container(height:100,width: 80,color: Colors.red,)],),
          Row(
mainAxisAlignment: MainAxisAlignment. spaceBetween,
            children: [Container(height: 100,width: 80,color: Colors.orange,),
            Container(height: 100,width: 80,color: Colors.pink,)],)
      ]),
    );
  }
}