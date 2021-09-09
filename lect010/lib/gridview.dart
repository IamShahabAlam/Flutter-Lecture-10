import 'package:flutter/material.dart';
import 'package:lect010/tabbar.dart';

class Gridview extends StatefulWidget {
  @override
  _GridviewState createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {

 var list = ["Shahab","Aleem","Rahim","Waiz","Usman","Bilal","Sharoz"];

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

          title: Center(child: Text("GridView", style: TextStyle(color: Colors.black),)) ,

          actions: [
            ElevatedButton( 
              style: ElevatedButton.styleFrom( elevation:0,primary: Colors.white,onPrimary:Colors.grey[700]),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Tabbar()));

              },
              child: Icon(Icons.arrow_forward_ios))

          ],
         ),

        body: GridView.count(
          crossAxisCount: 3 ,
          crossAxisSpacing: 2 ,
          mainAxisSpacing: 0,
          children: List.generate(list.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  color: Colors.cyan,
                  height: 50,
                  width: 50,
                  child: Center(child: Text(list[index])),
                ),
              );
          }),
          ),
        
        
        
      
    );
  }
}