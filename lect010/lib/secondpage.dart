import 'package:flutter/material.dart';

import 'gridview.dart';

class SecondPage extends StatefulWidget {
 

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.dark,
       backgroundColor: Colors.white,
       elevation: 0,
        leading: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            onPrimary: Colors.grey[800],
            elevation: 0,
            
          ),
          onPressed: (){Navigator.pop(context);},
          child: Icon(Icons.arrow_back_ios_outlined)
          ) ,

        title: Center(child: Text("SecondPage", style: TextStyle(color: Colors.black),)) ,

        actions: [
          ElevatedButton( 
            style: ElevatedButton.styleFrom( elevation:0,primary: Colors.white,onPrimary:Colors.grey[700]),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridview()));

            },
            child: Icon(Icons.arrow_forward_ios))

        ],
      ),

// ===============================================================================

    body:  ListView(
        children: [

          Padding(
            padding: const EdgeInsets.only(left:20,bottom: 20),
            child: Text("Transactions", style: TextStyle(color: Colors.grey[700], fontSize: 25, fontWeight: FontWeight.bold ), ),
          ),

          Row(
            children: [ 
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20) ,

                ),
                
                height: 25,
                width:65,
               margin: EdgeInsets.only(left:30,bottom: 20),
              
                
                child: Center(
                  child: Text("Today", style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                )),
            ],
          ),
          
          Row(
            children: [
              Container(
                color: Colors.green,
                height:100,
                width: 100,
              ),

              Container(

              ),
            ],

          )
        ],
    )
    );
  }
}