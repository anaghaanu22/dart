import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.lightGreen,
        leading: Icon(Icons.line_weight_sharp),
        actions: [
          Icon(Icons.notification_add_outlined)
        ],
      ),
    );
  }
}