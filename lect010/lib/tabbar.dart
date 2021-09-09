import 'package:flutter/material.dart';
import 'package:lect010/register.dart';

import 'login.dart';

class Tabbar extends StatefulWidget {

  @override
  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
      child:  Scaffold(
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

          title: Center(child: Text("Tabbar", style: TextStyle(color: Colors.black),)) ,

          actions: [
            ElevatedButton( 
              style: ElevatedButton.styleFrom( elevation:0,primary: Colors.white,onPrimary:Colors.grey[700]),
              onPressed: (){

              },
              child: Icon(Icons.arrow_forward_ios))

          ],

          bottom: TabBar( 
            labelColor: Colors.cyan ,
            indicatorColor: Colors.cyan,
            indicatorWeight: 5,
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelColor: Colors.grey[500],
            tabs: [
            Tab(child: Center(child: Text("Login")),),
            Tab(child: Center(child: Text("Registration")),),
          ]),

         ),
         body: TabBarView(children: [
           Login(),
           Register()
         ]),

         ),
    );
  }
}