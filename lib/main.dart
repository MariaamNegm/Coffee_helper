import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter First Trial',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromRGBO( 239, 238, 116, 1),
          appBar: AppBar(
              title: Text(
                "Coffee_Helper",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 30,
                ),
              ),
              centerTitle: true,
              backgroundColor: Color.fromRGBO(239, 238, 116, 1)),
          drawer:Drawer(
            child:Column(
              children: [
                 UserAccountsDrawerHeader(accountName:Text("Mariam Mohamed"),
                     accountEmail:Text("mariamnegm2001@outlook.com"),
                     currentAccountPicture:Icon(Icons.person,color: Colors.white,size:60,),
                    decoration:BoxDecoration(
                     image:DecorationImage(
                       image:AssetImage("images/bacground.jpg")
                     )
                   )
                 ),
                ListTile(
                   title: Text("HomePage",style: TextStyle(
                     fontSize:20,
                     color:Colors.black87,
                   ),),
                  leading:Icon(Icons.home),
                ),
                ListTile(
                  title: Text("AboutUs",style: TextStyle(
                    fontSize:20,
                    color:Colors.black87,
                  ),),
                  leading:Icon(Icons.wb_incandescent),
                ),
                ListTile(
                  title: Text("Orders",style: TextStyle(
                    fontSize:20,
                    color:Colors.black87,
                  ),),
                  leading:Icon(Icons.note),
                ),
                ListTile(
                  title: Text("HelpCenter",style: TextStyle(
                    fontSize:20,
                    color:Colors.black87,
                  ),),
                  leading:Icon(Icons.help),
                ),
                 Divider(
                   color: Colors.black87,
                   height: 30,
                 ),
                ListTile(
                  title: Text("LogOut",style: TextStyle(
                    fontSize:20,
                    color:Colors.black87,
                  ),),
                  leading:Icon(Icons.exit_to_app),
                ),
              ],
            ),
          ),
          body: Stack(
            children: [
              Container(
                child:Image.asset(
                  "images/ground.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              ListView(
                children: [
                  Container(
                    child: CarouselSlider(
                      options: CarouselOptions(
                        aspectRatio: 2.0,
                        height: 200,
                        enlargeCenterPage: true,
                        reverse: true,
                        scrollDirection: Axis.vertical,
                        autoPlay: true,
                      ),
                      items: [
                        Image.asset(
                          "images/2.jpg",
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          "images/3.jpg",
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          "images/4.jpg",
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          "images/6.jpg",
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Text(
                      "Iced_Coffee_List:",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  ),
                  Container(
                    height: 150,
                    child:ListView(
                      scrollDirection:Axis.horizontal,
                      children: [
                         Card(
                           color:Colors.white,
                           shape: RoundedRectangleBorder(
                             borderRadius:BorderRadius.circular(15.0),
                           ),
                           child:Container(
                             width: 90,
                            child:Image.asset("images/li1.jpg"),
                           ),
                         ),
                         Card(
                          color:Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(15.0),
                          ),
                          child:Container(
                            width: 90,
                            child:Image.asset("images/li2.jpg"),
                          ),
                        ),
                         Card(
                          color:Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(15.0),
                          ),
                          child:Container(
                            width: 90,
                            child:Image.asset("images/li3.jpg"),
                          ),
                        ),
                         Card(
                          color:Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(15.0),
                          ),
                          child:Container(
                            width: 90,
                            child:Image.asset("images/li4.jpg"),
                          ),
                        ),
                         Card(
                          color:Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(15.0),
                          ),
                          child:Container(
                            width: 90,
                            child:Image.asset("images/1.jpg"),
                          ),
                        ),






                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Text(
                      "Coming Soon!:",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  ),
                  Container(
                    height: 135,
                    child:GridView
                      (gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,crossAxisSpacing:9.0,mainAxisSpacing:0),
                       children: [
                         Image.asset("images/op11.jpg"),
                         Image.asset("images/op5.jpg"),
                         Image.asset("images/op4.jpg"),
                       ],
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
