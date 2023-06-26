import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImgPick extends StatefulWidget {
  const ImgPick({Key? key}) : super(key: key);

  @override
  State<ImgPick> createState() => _ImgPickState();
}

class _ImgPickState extends State<ImgPick> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker"),

      ),
      body: Center(
        child: Column(

        ),
      ),
    );
  }
}
