import 'package:flutter/material.dart';

class  Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("Home"),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            onPressed: (){

            },
            
          ),
        ],
      ),

      body: new Center(
        child: new Text("Home"),
      ),
      
    );
  }
}