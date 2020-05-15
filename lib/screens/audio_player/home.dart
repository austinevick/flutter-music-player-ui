import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:music_app/models/artist_model.dart';
import 'package:music_app/screens/audio_player/artist_album.dart';
import 'package:music_app/screens/audio_player/current_song_screen.dart';
import 'package:music_app/screens/widget.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'download_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ArtistModel artistModel = ArtistModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Container(
          height: 100,
          alignment: Alignment.bottomLeft,
          decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15))),
          child: Padding(
            padding: const EdgeInsets.only(top: 15, left: 20, bottom: 12),
            child: Text(
              'Library',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
          ),
        ),
        Expanded(
            //0807 189 7542
            child: ListView(
          children: <Widget>[
            buildMusicLibrary(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MusicDownloadScreen())),
                icon: Container(
                  height: 50,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('image/song.png'))),
                ),
                title: 'Songs',
                subtitle: '1024 Songs'),
            buildMusicLibrary(
                icon: Container(
                  height: 50,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('image/playlist.webp'))),
                ),
                title: 'Playlist',
                subtitle: '24 Songs'),
            buildMusicLibrary(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ArtistAlbumScreen())),
                icon: Container(
                  height: 50,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('image/album.png'))),
                ),
                title: 'Album',
                subtitle: '10 Songs'),
          ],
        )),
        OpenContainer(
            closedElevation: 0,
            transitionType: ContainerTransitionType.fade,
            openColor: Colors.purple,
            transitionDuration: const Duration(milliseconds: 2000),
            closedBuilder: (context, openContainer) {
              return GestureDetector(
                onTap: openContainer,
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Text('Now playing',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                          trailing: CircularPercentIndicator(
                            radius: 50,
                            progressColor: Colors.white,
                            center: IconButton(
                                icon: Icon(Icons.play_arrow), onPressed: () {}),
                          ),
                          leading: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('image/frank.jpg')),
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue,
                              )),
                          subtitle: Text('Frank Edwards',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w800)),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            openBuilder: (context, _) {
              return CurrentSongScreen();
            })
      ]),
      bottomNavigationBar: buildBottomApp(function: () {}, onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: Icon((Icons.file_download)),
      ),
    );
  }
}
