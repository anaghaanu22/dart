import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Tme extends StatefulWidget {
  const Tme({Key? key}) : super(key: key);


  @override
  State<Tme> createState() => _TmeState();
}


class _TmeState extends State<Tme> {
  XFile? pickedFile ;
  File? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              ElevatedButton(
                child: Text('pick'),
                onPressed: () async {
                  ImagePicker picker = ImagePicker();
                  pickedFile = await picker.pickImage(source: ImageSource.gallery);


                  setState(() {
                    image = File(pickedFile!.path);
                  });


                },
              ),
              image==null?Text('no image'): Image.file(image!),
              Text(image==null?'image':pickedFile!.name),
            ],
          ),
        ));
  }
}
