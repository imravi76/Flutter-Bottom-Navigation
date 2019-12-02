import 'package:flutter/material.dart';
import 'package:myapp/Chat.dart';
import 'package:myapp/Home.dart';
import 'package:myapp/Profile.dart';

void main(){
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: navBar()
    );
  }
}

class navBar extends StatefulWidget {
  @override
  _navBarState createState() => _navBarState();
}

class _navBarState extends State<navBar> {

  int pageindex = 0;
  final List<Widget> pages = [
    Home(),
    Chat(),
    Profile(),
  ];

  onTappedItem(int index){
    setState(() {
     pageindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body:pages[pageindex],

      bottomNavigationBar: new BottomNavigationBar(

        onTap: onTappedItem,
        currentIndex: pageindex,
        items: [
          BottomNavigationBarItem(
            icon:new Icon(Icons.home),
            title: new Text("Home"), 
            ),

             BottomNavigationBarItem(
            icon:new Icon(Icons.chat),
            title: new Text("Chat"), 
            ),

             BottomNavigationBarItem(
            icon:new Icon(Icons.person),
            title: new Text("Profile"), 
            ),
            
        ],
      ),
      
    );
  }
}