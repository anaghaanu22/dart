import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Sdf extends StatefulWidget {
  const Sdf({super.key});

  @override
  State<Sdf> createState() => _SdfState();
}

class _SdfState extends State<Sdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
        centerTitle: true,
      ),
      body: Column(children: [
        Row(
          children:[Container(
       height: 100,
       width: 100,
       color: Colors.black, 
      ),
      Container(
        height: 100,
        width: 100,
        color: Colors.red,
      ),
          ]),
          Row(
        children:[
      Container( height: 100,
        width: 100,
        color: Colors.blue,),
        Container( height: 100,
        width: 100,
        color: Colors.yellow,),
      ]


        
      )
      ]
      ),
      
    );
  }
}