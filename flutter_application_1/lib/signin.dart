import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'login.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  var email=TextEditingController();
  var password=TextEditingController();
  var conformpwd=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: Column(children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("TODO",style: TextStyle(fontSize: 35,fontWeight:FontWeight.bold ),),
              Padding(
                padding: const EdgeInsets.only(left:15,right: 15),
                child: TextField(
                  controller: email,
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: TextField(
                  controller: password,
                  decoration: InputDecoration(
                    suffixIcon:Icon(Icons.remove_red_eye) ,
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                
              ),
               SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: TextField(
                  controller: conformpwd,
                  decoration: InputDecoration(
                    suffixIcon:Icon(Icons.remove_red_eye) ,
                    labelText: "Conform password",
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                
              ),
            ]),
          
              height:400 ,
              width: 300,
              color: Colors.blue.shade100,
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: (){
              
            },
             child: Text("Login"),
             style: ElevatedButton.styleFrom(
    minimumSize: Size(300, 50),
             ),
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(onPressed: (){},
              child: Icon(Icons.facebook),
              ),
              SizedBox(width: 10,),
              FloatingActionButton(onPressed: (){},
              child: Icon(Icons.add_a_photo),
              ),
              SizedBox(width: 10,),
              FloatingActionButton(onPressed: (){},
              child: Icon(Icons.notification_add),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),

         TextButton(onPressed: 
        (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Log()));
        } , child: Text("You already have an account?SignIn")),
        ],)),
    );
  }
}
  