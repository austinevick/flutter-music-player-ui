import 'package:flutter/material.dart';
import 'package:music_app/screens/widget.dart';

class AlbumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Center(child: Text('Artist album'),),),
      
    bottomNavigationBar: buildBottomApp(function: (){},onPressed: (){}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
           
        },
        child: Icon((Icons.clear)),
      ),
);
  }
}
