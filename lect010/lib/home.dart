

import 'package:flutter/material.dart';
import 'package:lect010/gridview.dart';
import 'package:lect010/secondpage.dart';
import 'package:lect010/tabbar.dart';

class Home extends StatefulWidget {
 

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

var name = ["Shahab","Rahim", "bilal" , "Usman","Aleem", "Waiz","Abdullah"];
var age = ["20","20", "23", "23","24","23","23"];
var pic = ["https://scontent.fkhi8-1.fna.fbcdn.net/v/t1.6435-9/84183504_105773450980382_7180527463066238976_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=6Cw4OFdRGrgAX_ZeuzX&_nc_ht=scontent.fkhi8-1.fna&oh=822e6c53f1bdcb3d0b9a2f3d2ed7f44e&oe=60E384CC","https://scontent.fkhi8-1.fna.fbcdn.net/v/t1.6435-9/36223907_1026280644207825_7238020672679575552_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=174925&_nc_ohc=qCibmwS8e1IAX9F2-nr&_nc_ht=scontent.fkhi8-1.fna&oh=d5e11cebdadae772f61ec1a8dd7b6632&oe=60E54806","https://scontent.fkhi8-1.fna.fbcdn.net/v/t1.6435-9/88335999_2623909917937468_6715566166300950528_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=kajfj8-dZ0UAX9tNiVl&_nc_oc=AQl_JYeDnhnGJf26K5Y9RRTNadtgKx0QzTgfUlSTcrVaaQ1RWqf4XBYCgg6_1dLNqks&_nc_ht=scontent.fkhi8-1.fna&oh=4c2b7b57c253b1949febd37cbb0292c3&oe=60E5B91B","https://scontent.fkhi8-1.fna.fbcdn.net/v/t31.18172-8/15123456_112864135864710_1184361210707684989_o.jpg?_nc_cat=106&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=pDiiLOlkLDEAX_HCWYG&_nc_ht=scontent.fkhi8-1.fna&oh=bec31f4e01417bf2ce344e8cc008e8df&oe=60E4ECD7","https://scontent.fkhi8-1.fna.fbcdn.net/v/t1.6435-9/186510212_3005095859774355_5726143863259427516_n.jpg?_nc_cat=107&ccb=1-3&_nc_sid=e3f864&_nc_ohc=llWNLO2v6YEAX-WTRht&_nc_ht=scontent.fkhi8-1.fna&oh=36ef5bf09b109d819fbf495d97472e60&oe=60E57E24","https://scontent.fkhi8-1.fna.fbcdn.net/v/t31.18172-8/20158082_329995950768639_2923796357250039357_o.jpg?_nc_cat=101&ccb=1-3&_nc_sid=174925&_nc_ohc=sLFU35tKxoMAX9uWG7s&_nc_ht=scontent.fkhi8-1.fna&oh=2be6a64fecf01e8321272097a181a27c&oe=60E3D26F","https://scontent.fkhi8-1.fna.fbcdn.net/v/t1.6435-9/197484196_1760740580776721_504514517221831146_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=pZXKvYJY9zEAX8YVSz6&_nc_ht=scontent.fkhi8-1.fna&oh=192f190c1894942f412104856b5e3968&oe=60E3E1B1"];

  int _currentIndex = 0 ;
  final List<Widget> _children = [
    Home(),
    Tabbar(),
    SecondPage()

  ];

void onTappedBar(int index){
  setState(() {
    _currentIndex = index;
  });
}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[800],
          
         

          appBar: AppBar(
            backgroundColor: Colors.grey[700],
            foregroundColor: Colors.white,
            
            elevation: 5,
            brightness: Brightness.dark,
         
            // leading: 
            // Icon(Icons.menu,
            // color: Colors.grey[700],
            // ) ,
            
            title: Text("LECTURE 10", style: TextStyle(color: Colors.white),) ,
            
            actions: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[700] ,
                  onPrimary: Colors.white ,
                ),
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
              },
                child: Icon(Icons.logout,)
                ),
            ],
          ),

           drawer:  Drawer(  child: 
           ListView(
             
             children: [ 
               Container(
                 //color: Colors.grey,
                height: 160,
              
               child: DrawerHeader(padding: EdgeInsets.zero,
               child: 
               Image.network("https://blog.codemagic.io/uploads/covers/codemagic-blog-header-flutter-1.png")
               )
               ),
               
               GestureDetector(onTap: (){},         //Google it
                                child: ListTile(
                   leading: Icon(Icons.icecream),
                   title: Text("Icecream") ,
                   subtitle: Text("yummy"),
                   trailing: Icon(Icons.arrow_forward_ios),
                   ),
               ),

                  ListTile(
                 leading: Icon(Icons.icecream),
                 title: Text("Icecream") ,
                 subtitle: Text("yummy"),
                 trailing: Icon(Icons.arrow_forward_ios),
                 ),

                  ListTile(
                 leading: Icon(Icons.icecream),
                 title: Text("Icecream") ,
                 subtitle: Text("yummy"),
                 trailing: Icon(Icons.arrow_forward_ios),
                 ),

                  ListTile(
                 leading: Icon(Icons.icecream),
                 title: Text("Icecream") ,
                 subtitle: Text("yummy"),
                 trailing: Icon(Icons.arrow_forward_ios),
                 ),
              

             ],),
           
      
              ),

             
            

  //======================================================================

          body:   
         
          ListView.builder(
            
            itemCount: name.length ,
            itemBuilder: (context,index) {
                  return ListTile(
                    
                    

                      
                          
                          leading: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.transparent,
                            backgroundImage: NetworkImage(pic[index])) ,
                            

                           title:  Text(name[index]) ,
                            onTap: () {// do something
                                   },
                        onLongPress: (){ // do something else
                                      },
                          

                          
                              subtitle: Text(age[index]),
                           trailing: Icon(Icons.check, color: Colors.cyan,),
                        
                          
                        
                      
                    
                    
                  );
            } ,
            
            
            ),
      
          // _children[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
              onTap: onTappedBar, 
              currentIndex: _currentIndex, 
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text("Home"),
                  ),

                  BottomNavigationBarItem(
                    icon: Icon(Icons.portrait),
                    title: Text("Profile"), 
                  ),

                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    title: Text("Settings"), 
                    ),

              ],

          ),

    
    
    
    
    
    
    
    
    
    
    
    
    );
  }
}

