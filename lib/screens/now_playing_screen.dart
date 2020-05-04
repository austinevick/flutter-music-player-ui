import 'package:flutter/material.dart';

class NowPlayingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: 
      Column(
        children: <Widget>[
          IconButton(icon: Icon(Icons.check), onPressed: (){
            
          })
        ],
      ),),
      
    );
  }
}