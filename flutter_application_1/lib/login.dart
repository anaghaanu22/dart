import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/signin.dart';

class Log extends StatefulWidget {
  const Log({super.key});

  @override
  State<Log> createState() => _LogState();
}

class _LogState extends State<Log> {
  var email=TextEditingController();
  var password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Image.network(""),
                Text("TODO",style: TextStyle(fontSize: 35,fontWeight:FontWeight.bold ),),
              Padding(
                padding: const EdgeInsets.only(left:15,right: 15),
                child: TextField(
                
                  controller: email,
                  decoration: InputDecoration(
                    
                    labelText: "Email",
                    border: OutlineInputBorder(
                     // borderRadius: BorderRadius.circular(10)
                    ),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
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
              FloatingActionButton(
                onPressed: (){
                },
              child: Icon(Icons.facebook),
              ),
              SizedBox(width: 10,),
              FloatingActionButton(onPressed: (){},
              child: Icon(Icons.add_a_photo),
              ),
              SizedBox(width: 10,),
              FloatingActionButton(onPressed: (){},
              child: Icon(Icons.notification_add),
              ),
              SizedBox(
                width: 10,
              ),
              FloatingActionButton(onPressed: (){},child:Icon(Icons.abc) ,)
            ],
          ),
          SizedBox(
            height: 20,
          ),

         TextButton(onPressed: 
        (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
         // Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
        } , child: Text("Don't have an account??SignUp")),
        OutlinedButton(
               child: Text(
                "Outlined Button",
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
              onPressed: () {},
            ),

        ],)),
    );
  }
}