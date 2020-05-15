import 'package:flutter/material.dart';
import 'package:music_app/models/artist_model.dart';
import 'package:music_app/screens/audio_player/artist_album.dart';
import 'package:music_app/screens/widget.dart';

import 'now_playing_screen.dart';

class MusicDownloadScreen extends StatelessWidget {
  final SongList songList = SongList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
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
                'Download',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: songList.artist.length,
                  itemBuilder: (context, index) {
                    final artist = songList.artist[index];
                    return buildSongList(
                        context: context,
                        tag: artist.id,
                        onTap: () => Navigator.of(context).push(
                            PageRouteBuilder(
                                transitionDuration:
                                    const Duration(milliseconds: 3000),
                                fullscreenDialog: true,
                                pageBuilder: (context, i, animate) {
                                  return NowPlayingScreen(
                                    artistModel: artist,
                                  );
                                })),
                        value: artist.status,
                        title: artist.name,
                        subTitle: artist.songTitle,
                        icon: artist.image);
                  }))
        ],
      ),
      bottomNavigationBar: buildBottomApp(function: () {}, onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ArtistAlbumScreen()));
        },
        child: Icon((Icons.clear)),
      ),
    );
  }
}
