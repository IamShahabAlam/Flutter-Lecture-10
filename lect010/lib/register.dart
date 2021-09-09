import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}
class _RegisterState extends State<Register> {

    var count = 0;

 increment(){
   setState(() {
     count += 1 ;
   });
 }

 decrement(){
   setState(() {
     count -= 1 ;
   });
 }

 reset(){
   setState(() {
     count = 0;
   });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Center(
            child: Column(
              children: [
               
         Container(
        child:  
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("SET STATE (With Increment Decrement)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
        ),

      ),

             Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("DIGITAL TASBEEH", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
        ),

           Container(
             height: 30,
             width: 100,
          decoration: BoxDecoration(
            border: Border.all( color:Colors.grey[600], width: 0.5 ),
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(20)
            ),
          child:
          Center(child: Text("$count")), 
        ),  
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
                Container(
                  height: 90,
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.cyan , 
                      padding: EdgeInsets.all(10) ,
                      shape: CircleBorder() ,
                      elevation: 5,
                      textStyle: TextStyle(fontSize: 35),
                       
                    ),
                    onPressed: increment, child: Icon(Icons.add)),
                ),

                   Container(
                     height: 90,
                     padding: EdgeInsets.all(10),
                     child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.cyan , 
                      padding: EdgeInsets.all(10) ,
                      shape: CircleBorder() ,
                      elevation: 5,
                      textStyle: TextStyle(fontSize: 40),
                       
                  ),
                  onPressed: decrement, child: Text("-")),
                   ),

                   Container(
                     height: 90,
                     padding: EdgeInsets.all(10),
                     child: ElevatedButton( 
                       
                  style: ElevatedButton.styleFrom(

                      primary: Colors.red[900] , 
                      padding: EdgeInsets.all(10) ,
                      shape: CircleBorder() ,
                      elevation: 5,
                      
                      
                       
                  ),
                  onPressed:reset, child: Icon(Icons.sync)),
                   ),
                

              ],
            )
            
            
              ],
            ),
          ),
    );
  }
}