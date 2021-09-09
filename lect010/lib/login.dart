import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  var player = "";

  single(){
    setState(() {
      player="Single Player";
    });
  }

  multi(){
    setState(() {
      player="Multiplayer";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
           Center(
             child: Column(
               children: [
                
                 Container( 
                   child :
         Padding(
           padding: const EdgeInsets.all(12.0),
           child: Text("SET STATE" , style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),),
         ),
                   ),
               
               Text("Select Mode: ",
               style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
               
               Text("$player",
               style: TextStyle(fontWeight: FontWeight.bold, color: Colors.cyan)),


              SizedBox(height: 30,),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white ,
                  primary: Colors.cyan ,
                ),
                onPressed: single, child: Text("Single Player")),

                SizedBox(height: 10,),

              ElevatedButton(onPressed:multi, child: Text("MultiPlayer"))    
               
               ],
             ),
           ),
    );
  }
  }