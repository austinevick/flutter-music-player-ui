import 'package:flutter/material.dart';
import 'package:music_app/screens/music_album.dart';
import 'package:music_app/screens/widget.dart';

class ArtistAlbumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 25, top: 45),
              child: Text(
                'All Albums',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8),
                itemCount: 10,
                itemBuilder: (
                  context,
                  index,
                ) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          color: Colors.purple,
                        ),
                      ),
                      Expanded(child: Text('item $index'))
                    ],
                  );
                }),
          ),
        ],
      ),
      bottomNavigationBar: buildBottomApp(function: () {}, onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AlbumScreen()));
        },
        backgroundColor: Colors.black,
        child: Icon((Icons.file_download)),
      ),
    );
  }
}
